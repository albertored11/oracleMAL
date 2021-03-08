# oracleMAL

Simple C++ cross-platform application that provides an useful implementation of an anime list from [MyAnimeList](https://myanimelist.net/) as an Oracle SQL script.

## Build

```bash
git clone https://github.com/albertored11/oracleMAL.git
cd oracleMAL
make
```

## Usage

1. [Export](https://myanimelist.net/panel.php?go=export) your anime list from MyAnimeList and extract XML file.
2. Convert XML file into a mySQL script using [SQLizer](https://sqlizer.io/#/) (select file, choose mySQL database and leave everything else unmodified, then download result).
3. Run ```./oracleMAL <path_to_file>```.
4. If everything went OK, Oracle SQL script will be saved in the same directory as original file, and the program will indicate you the file name.
5. Enjoy your script!
