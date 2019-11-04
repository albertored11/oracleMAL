#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>
#include <initializer_list>

using namespace std;

const int AVOIDED_LINES = 35;
const int MAX_STRINGS = 50;
const string INPUT_HEADER = "CREATE TABLE";
const string INSERT_HEADER = "INSERT INTO myanimelist VALUES";

typedef struct {
	string list[MAX_STRINGS];
	int size;
} tStringList;

// Checks if v is in list of values lst.
bool is_in(const int &v, initializer_list<int> lst) {

	return find(begin(lst), end(lst), v) != end(lst);

}

void outputHeader(ofstream &file) {

	file << "DROP TABLE myanimelist_anime;\n";
	file << '\n';
	file << "CREATE TABLE myanimelist_myinfo (\n";
	file << "\tuser_id NUMBER(10),\n";
	file << "\tuser_name VARCHAR2(9),\n";
	file << "\tuser_export_type NUMBER(10),\n";
	file << "\tuser_total_anime NUMBER(10),\n";
	file << "\tuser_total_watching NUMBER(10),\n";
	file << "\tuser_total_completed NUMBER(10),\n";
	file << "\tuser_total_onhold NUMBER(10),\n";
	file << "\tuser_total_dropped NUMBER(10),\n";
	file << "\tuser_total_plantowatch NUMBER(10),\n";
	file << "\tPRIMARY KEY(user_id)\n";
	file << ");\n";
	file << '\n';
	file << "CREATE TABLE myanimelist_anime (\n";
	file << "\tuser_id NUMBER(10),\n";
	file << "\tseries_animedb_id NUMBER(10),\n";
	file << "\tseries_title VARCHAR2(90),\n";
	file << "\tseries_type VARCHAR2(7),\n";
	file << "\tseries_episodes NUMBER(10),\n";
	file << "\tmy_watched_episodes NUMBER(10),\n";
	file << "\tmy_start_date VARCHAR2(10),\n";
	file << "\tmy_finish_date VARCHAR2(10),\n";
	file << "\tmy_score NUMBER(10),\n";
	file << "\tmy_status VARCHAR2(13),\n";
	file << "\tmy_times_watched NUMBER(10),\n";
	file << "\tmy_rewatching NUMBER(10),\n";
	file << "\tmy_rewatching_ep NUMBER(10),\n";
	file << "\tFOREIGN KEY(user_id) REFERENCES myanimelist_myinfo(user_id),\n";
	file << "\tPRIMARY KEY(user_id, series_animedb_id)\n";
	file << ");\n";
	file << '\n';

}

string subline(const string line, const int ignoreCommaNum, const int commaNum) {

	int commaCount;
	int i;
	int j;

	string aux;

	commaCount = -ignoreCommaNum;

	i = 0;
	j = 0;

	while (j < (int)line.length() && commaCount < commaNum) {

		if (line[j] == ',') {

			++commaCount;

			if (commaCount == 0)
				i = j + 1;

		}

		++j;

	}

	aux = line.substr(i, j - i - 1);

	if (j < (int)line.length())
		return line.substr(i, j - i - 1);
	else
		return line.substr(i, j - i);

}

void splitTitleData(const string titleData, tStringList &ret) {

	int start;
	int end;

	start = 0;
	end = 0;

	ret.size = 0;

	while (end < (int)titleData.length()) {

		// Variable attString is used to indicate that current attribute is a string, which may have commas.

		bool attString;
		
		attString = titleData[start] == '\'';

		while (end < (int)titleData.length() && ((titleData[end] != ',' && !attString) || (attString))) {

			if (attString && start != end && titleData[end] == '\'')
				attString = false;

			++end;

		}

		ret.list[ret.size++] = titleData.substr(start, end - start);

		++end;
		start = end;

	}

}

string replaceAmpersand(const string str) {

	string ret;

	ret = "";

	for (int i = 0; i < (int)str.length(); ++i) {

		if (str[i] != '&')
			ret += str[i];
		else
			ret += "and";

	}

	return ret;

}

string titleLine(const string line) {

	string ret;
	string aux;
	tStringList splittedTitleData;

	ret = "";
	aux = subline(line, 11, 500);
	aux = replaceAmpersand(aux); // '&' symbol is inappropriate for Oracle SQL strings

	splitTitleData(aux, splittedTitleData);

	for (int i = 0; i < splittedTitleData.size; ++i) {		

		if (!is_in(i, {0, 5, 9, 11, 12, 14, 16, 17, 20})) { // skip some attributes

			string elem;

			elem = splittedTitleData.list[i];

			if (elem != "'0000-00-00'")
				ret += elem;
			else
				ret += "NULL";

			if (i < splittedTitleData.size - 1)
				ret += ',';

		}

	}

	ret = ret.substr(0, ret.length() - 1);

	if (ret[ret.length() - 1] == ')')
		ret = ret.substr(0, ret.length() - 1);

	return ret;

}

void myinfoOutput(ofstream &file, const string line, string &userId) {

	file << INSERT_HEADER.substr(0, INSERT_HEADER.length() - 7) << "_myinfo VALUES (\n";
	file << '\t' << subline(line, 2, 9) << '\n';
	file << ");\n";
	file << '\n';

	userId = subline(line, 2, 1);

}

void insertHeaderOutput(ofstream &file) {

	file << INSERT_HEADER.substr(0, INSERT_HEADER.length() - 7) << "_anime\n";

}

void endTitleOutput(ofstream &file, const bool finalElem) {

	if (!finalElem)
		file << " UNION ALL\n";
	else
		file << ";\n";

}

void titleOutput(ofstream &file, const string line, const string userId) {

	file << '\t' << "SELECT " << userId << ',';
	file << titleLine(line);
	file << " FROM dual";

}

void endOutput(ofstream &file) {

	file << ";\n";

}

string newFilename(const string filename, const bool fullPath) {

	string ret;
	int pos;

	if (!fullPath) {

		pos = filename.length() - 1;

		while (pos > 0 && filename[pos - 1] != '\\' && filename[pos - 1] != '/')
			--pos;

	}
	else
		pos = 0;

	ret = filename.substr(pos, filename.length() - pos - 4);

	ret += "_oracle.sql";

	return ret;

}

bool convert(string filename) {

	ifstream inputFile;

	if (filename.substr(filename.length() - 4, 4) != ".sql")
		return false;

	inputFile.open(filename);

	if (!inputFile.is_open())
		return false;	

	string line;	

	if (inputFile.eof()) {
		inputFile.close();
		return false;
	}

	getline(inputFile, line);

	if (line.substr(0, 12) != INPUT_HEADER) {
		inputFile.close();
		return false;
	}

	ofstream outputFile;
	string prevLine;
	string userId;
	int i;

	i = 1;

	while (i < AVOIDED_LINES && !inputFile.eof()) {

		getline(inputFile, line);

		++i;

	}

	prevLine = line;

	if (!inputFile.eof())
		getline(inputFile, line);

	outputFile.open(newFilename(filename, true));

	outputHeader(outputFile);

	myinfoOutput(outputFile, line, userId);

	insertHeaderOutput(outputFile);

	while (!inputFile.eof()) {

		if (line == INSERT_HEADER) {
			endTitleOutput(outputFile, true);
			insertHeaderOutput(outputFile);
		}
		else {

			if (prevLine != INSERT_HEADER)
				endTitleOutput(outputFile, false);

			titleOutput(outputFile, line, userId);

		}

		prevLine = line;

		getline(inputFile, line);

	}

	endOutput(outputFile);

	inputFile.close();
	outputFile.close();

	return true;

}

int main(int argc, char **argv) {

	if (argc != 2)
		cout << "Usage: oracleMAL <filename>. Use -H for more details.\n";
	else if (argv[1][0] == '-') {
		cout << "Usage: oracleMAL <filename>.\n";
		cout << "\n";
		cout << "Instructions: export your anime list from MAL as XML, convert";
		cout << " it into a MySQL script using https://sqlizer.io/ and then ";
		cout << "use this application to get an useful implementation as an ";
		cout << "Oracle SQL script.\n";
	}
	else {

		if (!convert(argv[1]))
			cout << "File error.\n";
		else
			cout << "File successfully saved as " << newFilename(argv[1], false) << ".\n";

	}

	return 0;

}
