DROP TABLE myanimelist_anime;

CREATE TABLE myanimelist_myinfo (
	user_id NUMBER(10),
	user_name VARCHAR2(9),
	user_export_type NUMBER(10),
	user_total_anime NUMBER(10),
	user_total_watching NUMBER(10),
	user_total_completed NUMBER(10),
	user_total_onhold NUMBER(10),
	user_total_dropped NUMBER(10),
	user_total_plantowatch NUMBER(10),
	PRIMARY KEY(user_id)
);

CREATE TABLE myanimelist_anime (
	user_id NUMBER(10),
	series_animedb_id NUMBER(10),
	series_title VARCHAR2(90),
	series_type VARCHAR2(7),
	series_episodes NUMBER(10),
	my_watched_episodes NUMBER(10),
	my_start_date VARCHAR2(10),
	my_finish_date VARCHAR2(10),
	my_score NUMBER(10),
	my_status VARCHAR2(13),
	my_times_watched NUMBER(10),
	my_rewatching NUMBER(10),
	my_rewatching_ep NUMBER(10),
	FOREIGN KEY(user_id) REFERENCES myanimelist_myinfo(user_id),
	PRIMARY KEY(user_id, series_animedb_id)
);

INSERT INTO myanimelist_myinfo VALUES (
	5848785,'Herbort11',1,331,0,106,5,2,218
);

INSERT INTO myanimelist_anime
	SELECT 5848785,31646,'3-gatsu no Lion','TV',22,22,NULL,'2018-10-09',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35180,'3-gatsu no Lion 2nd Season','TV',22,22,NULL,'2018-10-23',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11759,'Accel World','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36904,'Aggressive Retsuko (ONA)','ONA',10,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,22199,'Akame ga Kill!','TV',24,24,NULL,'2017-08-30',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,47,'Akira','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,6547,'Angel Beats!','TV',13,13,'2017-03-16','2017-04-03',4,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9989,'Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai.','TV',11,11,NULL,NULL,8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,15039,'Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai. Movie','Movie',1,1,NULL,NULL,5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11433,'Ano Natsu de Matteru','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11111,'Another','TV',12,12,'2017-03-16','2018-03-17',5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11701,'Another: The Other - Inga','OVA',1,1,'2018-03-18','2018-03-18',5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,24833,'Ansatsu Kyoushitsu','TV',22,22,'2018-02-05','2018-02-11',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,30654,'Ansatsu Kyoushitsu 2nd Season','TV',25,25,'2018-02-12','2018-02-20',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,21995,'Ao Haru Ride','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37171,'Asobi Asobase','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32827,'B: The Beginning','ONA',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28805,'Bakemono no Ko','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,5081,'Bakemonogatari','TV',15,15,NULL,'2018-12-20',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36649,'Banana Fish','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,22789,'Barakamon','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,889,'Black Lagoon','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31043,'Boku dake ga Inai Machi','TV',12,12,NULL,NULL,9,'Completed',1,0,0 FROM dual UNION ALL
	SELECT 5848785,31964,'Boku no Hero Academia','TV',13,13,'2017-05-14','2017-05-26',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33486,'Boku no Hero Academia 2nd Season','TV',25,25,'2017-05-28','2017-09-30',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36456,'Boku no Hero Academia 3rd Season','TV',25,25,NULL,'2018-09-29',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,38408,'Boku no Hero Academia 4th Season','TV',0,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36896,'Boku no Hero Academia the Movie: Futari no Hero','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,38699,'Boku no Hero Academia: All Might - Rising The Animation','Special',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33929,'Boku no Hero Academia: Sukue! Kyuujo Kunren!','OVA',1,1,'2017-12-06','2017-12-06',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35459,'Boku no Hero Academia: Training of the Dead','OVA',1,1,'2017-12-06','2017-12-06',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,14345,'Btooom!','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31478,'Bungou Stray Dogs','TV',12,12,'2018-03-18','2018-03-23',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32867,'Bungou Stray Dogs 2nd Season','TV',12,12,'2018-03-24',NULL,5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1689,'Byousoku 5 Centimeter','Movie',3,3,NULL,'2017-02-19',5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,232,'Cardcaptor Sakura','TV',70,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28999,'Charlotte','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10800,'Chihayafuru','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,59,'Chobits','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,14741,'Chuunibyou demo Koi ga Shitai!','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2167,'Clannad','TV',23,23,NULL,'2018-11-10',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,4181,'Clannad: After Story','TV',24,24,NULL,'2018-11-21',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,6351,'Clannad: After Story - Mou Hitotsu no Sekai, Kyou-hen','Special',1,1,NULL,'2018-11-21',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,4059,'Clannad: Mou Hitotsu no Sekai, Tomoyo-hen','Special',1,1,NULL,'2018-11-10',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1575,'Code Geass: Hangyaku no Lelouch','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,8142,'Colorful (Movie)','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10029,'Coquelicot-zaka kara','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1,'Cowboy Bebop','TV',26,26,NULL,NULL,7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,5,'Cowboy Bebop: Tengoku no Tobira','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10259,'Da Yu Hai Tang','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32189,'Danganronpa 3: The End of Kibougamine Gakuen - Mirai-hen','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33028,'Danganronpa 3: The End of Kibougamine Gakuen - Zetsubou-hen','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16592,'Danganronpa: Kibou no Gakuen to Zetsubou no Koukousei The Animation','TV',13,13,NULL,'2017-02-10',5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11843,'Danshi Koukousei no Nichijou','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2025,'Darker than Black: Kuro no Keiyakusha','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35849,'Darling in the FranXX','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,14353,'Death Billiards','Movie',1,1,'2017-11-15','2017-11-15',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1535,'Death Note','TV',37,37,NULL,NULL,9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28223,'Death Parade','TV',12,12,'2017-09-05','2017-09-07',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33988,'Demi-chan wa Kataritai','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,5177,'Denpa-teki na Kanojo','OVA',2,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,235,'Detective Conan','TV',0,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35120,'Devilman: Crybaby','ONA',10,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,30346,'Doukyuusei (Movie)','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28121,'Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,6746,'Durarara!!','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2924,'ef: A Tale of Memories.','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,226,'Elfen Lied','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,790,'Ergo Proxy','TV',23,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,6702,'Fairy Tail','TV',175,175,'2017-05-30','2017-07-08',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,22043,'Fairy Tail (2014)','TV',102,102,'2017-07-08','2017-08-07',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,12049,'Fairy Tail Movie 1: Houou no Miko','Movie',1,1,'2018-01-26','2018-01-26',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,17535,'Fairy Tail Movie 1: Houou no Miko - Hajimari no Asa','Special',1,1,'2018-01-26','2018-01-26',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,30778,'Fairy Tail Movie 2: Dragon Cry','Movie',1,1,'2018-03-01','2018-03-01',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9982,'Fairy Tail OVA','OVA',5,5,'2017-12-08','2017-12-09',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32930,'Fairy Tail OVA (2016)','OVA',3,3,'2017-12-09','2017-12-10',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,18393,'Fairy Tail x Rave','OVA',1,1,'2017-12-09','2017-12-09',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35972,'Fairy Tail: Final Series','TV',0,2,NULL,NULL,0,'On-Hold',0,0,0 FROM dual UNION ALL
	SELECT 5848785,18507,'Free!','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,121,'Fullmetal Alchemist','TV',51,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,5114,'Fullmetal Alchemist: Brotherhood','TV',64,28,NULL,NULL,9,'Completed',0,1,0 FROM dual UNION ALL
	SELECT 5848785,6421,'Fullmetal Alchemist: Brotherhood Specials','Special',4,4,'2017-12-07','2017-12-07',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,430,'Fullmetal Alchemist: The Conqueror of Shamballa','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9135,'Fullmetal Alchemist: The Sacred Star of Milos','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2890,'Gake no Ue no Ponyo','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,24765,'Gakkougurashi!','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35222,'Gakuen Babysitters','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,384,'Gantz','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1829,'Gedo Senki','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,43,'Ghost in the Shell','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16918,'Gin no Saji','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,918,'Gintama','TV',201,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,21273,'Gochuumon wa Usagi Desu ka?','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,17895,'Golden Time','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,245,'Great Teacher Onizuka','TV',43,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16,'Hachimitsu to Clover','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,387,'Haibane Renmei','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,20583,'Haikyuu!!','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,263,'Hajime no Ippo','TV',75,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,21855,'Hanamonogatari','TV',5,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9289,'Hanasaku Iroha','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37141,'Hataraku Saibou','TV',13,13,NULL,'2018-11-29',5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1030,'Heisei Tanuki Gassen Ponpoko','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,27989,'Hibike! Euphonium','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1852,'Hidamari Sketch','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,934,'Higurashi no Naku Koro ni','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36884,'Hisone to Maso-tan','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9760,'Hoshi wo Ou Kodomo','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,578,'Hotaru no Haka','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10408,'Hotarubi no Mori e','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,431,'Howl no Ugoku Shiro','Movie',1,1,NULL,NULL,8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,136,'Hunter x Hunter','TV',62,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11061,'Hunter x Hunter (2011)','TV',148,148,'2017-10-01','2017-11-13',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,13271,'Hunter x Hunter Movie 1: Phantom Rouge','Movie',1,1,'2018-01-24','2018-01-24',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,19951,'Hunter x Hunter Movie 2: The Last Mission','Movie',1,1,'2018-01-28','2018-01-28',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,138,'Hunter x Hunter: Greed Island','OVA',8,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,139,'Hunter x Hunter: Greed Island Final','OVA',14,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,137,'Hunter x Hunter: Yorkshin City Kanketsu-hen','OVA',8,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,12189,'Hyouka','TV',22,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34542,'Inuyashiki','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37497,'Irozuku Sekai no Ashita kara','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,228,'Jigoku Shoujo','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,14719,'JoJo no Kimyou na Bouken (TV)','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,5680,'K-On!','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16664,'Kaguya-hime no Monogatari','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,3701,'Kaiba','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,7054,'Kaichou wa Maid-sama!','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34933,'Kakegurui','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1530,'Kanon (2006)','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35860,'Karakai Jouzu no Takagi-san','TV',12,12,NULL,'2018-12-12',5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37621,'Karakai Jouzu no Takagi-san OVA','OVA',1,1,NULL,NULL,5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,7711,'Karigurashi no Arrietty','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1604,'Katekyo Hitman Reborn!','TV',203,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,572,'Kaze no Tani no Nausicaä','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16662,'Kaze Tachinu','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33,'Kenpuu Denki Berserk','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,18679,'Kill la Kill','TV',24,0,'2018-01-21',NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,6045,'Kimi ni Todoke','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32281,'Kimi no Na wa.','Movie',1,1,'2017-03-05','2017-03-05',10,'Completed',3,0,0 FROM dual UNION ALL
	SELECT 5848785,36098,'Kimi no Suizou wo Tabetai','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,486,'Kino no Tabi: The Beautiful World','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,22535,'Kiseijuu: Sei no Kakuritsu','TV',24,24,NULL,'2019-01-10',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9260,'Kizumonogatari I: Tekketsu-hen','Movie',1,1,NULL,NULL,8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31757,'Kizumonogatari II: Nekketsu-hen','Movie',1,1,NULL,NULL,7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31758,'Kizumonogatari III: Reiketsu-hen','Movie',1,1,NULL,NULL,7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33206,'Kobayashi-san Chi no Maid Dragon','TV',13,13,NULL,NULL,8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35363,'Kobayashi-san Chi no Maid Dragon: Valentine, Soshite Onsen! - Amari Kitai Shinaide Kudasai','Special',1,1,NULL,NULL,7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28851,'Koe no Katachi','Movie',1,1,'2018-03-16','2018-03-16',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11887,'Kokoro Connect','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28725,'Kokoro ga Sakebitagatterunda.','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,30831,'Kono Subarashii Sekai ni Shukufuku wo!','TV',10,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16782,'Kotonoha no Niwa','Movie',1,1,'2018-01-27','2018-01-27',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32268,'Koyomimonogatari','ONA',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34712,'Kujira no Kora wa Sajou ni Utau','TV',12,12,NULL,'2018-10-27',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,433,'Kumo no Mukou, Yakusoku no Basho','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,416,'Kurenai no Buta','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32949,'Kuzu no Honkai','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,18153,'Kyoukai no Kanata','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,6172,'Layton Kyouju to Eien no Utahime','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37023,'Layton Mystery Tanteisha: Katri no Nazotoki File','TV',50,25,NULL,NULL,6,'On-Hold',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33489,'Little Witch Academia (TV)','TV',25,25,NULL,'2018-04-17',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35677,'Liz to Aoi Tori','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,17265,'Log Horizon','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2034,'Lovely★Complex','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1887,'Lucky☆Star','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1412,'Lupin III','TV',23,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34599,'Made in Abyss','TV',13,13,NULL,'2017-12-14',10,'Completed',1,0,0 FROM dual UNION ALL
	SELECT 5848785,36862,'Made in Abyss Movie 3: Fukaki Tamashii no Reimei','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,14513,'Magi: The Labyrinth of Magic','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9756,'Mahou Shoujo Madoka★Magica','TV',12,12,NULL,NULL,9,'Completed',1,0,0 FROM dual UNION ALL
	SELECT 5848785,11977,'Mahou Shoujo Madoka★Magica Movie 1: Hajimari no Monogatari','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11979,'Mahou Shoujo Madoka★Magica Movie 2: Eien no Monogatari','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11981,'Mahou Shoujo Madoka★Magica Movie 3: Hangyaku no Monogatari','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35062,'Mahoutsukai no Yome','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,512,'Majo no Takkyuubin','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,5030,'Maria†Holic','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34541,'Mary to Majo no Hana','Movie',1,1,NULL,NULL,6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10721,'Mawaru Penguindrum','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,585,'Mimi wo Sumaseba','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10620,'Mirai Nikki','TV',26,26,'2018-02-21','2018-03-02',5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16762,'Mirai Nikki: Redial','OVA',1,1,NULL,NULL,5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36936,'Mirai no Mirai','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35078,'Mitsuboshi Colors','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32182,'Mob Psycho 100','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,17074,'Monogatari Series: Second Season','TV',26,26,NULL,NULL,7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,164,'Mononoke Hime','Movie',1,1,'2017-07-18','2017-07-18',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,19,'Monster','TV',74,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,457,'Mushishi','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16067,'Nagi no Asu kara','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,877,'Nana','TV',47,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,23755,'Nanatsu no Taizai','TV',24,24,'2017-09-09',NULL,5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,20,'Naruto','TV',220,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,4081,'Natsume Yuujinchou','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,597,'Neko no Ongaeshi','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,15689,'Nekomonogatari: Kuro','TV',4,4,NULL,NULL,8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,30,'Neon Genesis Evangelion','TV',26,26,'2018-04-19','2018-04-27',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32,'Neon Genesis Evangelion: The End of Evangelion','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10165,'Nichijou','TV',26,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11597,'Nisemonogatari','TV',11,11,NULL,'2018-12-25',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,19815,'No Game No Life','TV',12,12,'2017-08-31','2017-09-04',4,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33674,'No Game No Life: Zero','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10161,'No.6','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1698,'Nodame Cantabile','TV',23,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,23623,'Non Non Biyori Repeat','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,20507,'Noragami','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,21557,'Omoide no Marnie','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1029,'Omoide Poroporo','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,21,'One Piece','TV',0,143,NULL,NULL,5,'Dropped',0,0,0 FROM dual UNION ALL
	SELECT 5848785,30276,'One Punch Man','TV',12,12,NULL,NULL,5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34134,'One Punch Man Season 2','TV',0,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,12355,'Ookami Kodomo no Ame to Yuki','Movie',1,1,NULL,NULL,9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32729,'Orange','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28297,'Ore Monogatari!!','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,26243,'Owari no Seraph','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31181,'Owarimonogatari','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35247,'Owarimonogatari 2nd Season','TV',7,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1943,'Paprika','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,437,'Perfect Blue','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9981,'Phi Brain: Kami no Puzzle','TV',25,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,22135,'Ping Pong the Animation','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,27775,'Plastic Memories','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1526,'Pokemon Advanced Generation: Mew to Hadou no Yuusha Lucario','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1121,'Pokemon Advanced Generation: Nanayo no Negaiboshi Jirachi','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2201,'Pokemon Advanced Generation: Pokemon Ranger to Umi no Ouji Manaphy','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1122,'Pokemon Advanced Generation: Rekkuu no Houmonsha Deoxys','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,12671,'Pokemon Best Wishes! Season 2: Kyurem vs. Seikenshi','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16680,'Pokemon Best Wishes! Season 2: Shinsoku no Genosect - Mewtwo Kakusei','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9917,'Pokemon Best Wishes!: Victini to Kuroki Eiyuu Zekrom','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10740,'Pokemon Best Wishes!: Victini to Shiroki Eiyuu Reshiram','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,6178,'Pokemon Diamond and Pearl: Arceus Choukoku no Jikuu e','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2847,'Pokemon Diamond and Pearl: Dialga vs. Palkia vs. Darkrai','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,7695,'Pokemon Diamond and Pearl: Genei no Hasha Zoroark','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,4026,'Pokemon Diamond and Pearl: Giratina to Sora no Hanataba Sheimi','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34514,'Pokemon Generations','ONA',18,18,NULL,NULL,7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36927,'Pokemon Movie 21: Minna no Monogatari','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34034,'Pokemon Sun and Moon','TV',0,47,'2017-02-27',NULL,5,'On-Hold',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31231,'Pokemon the Movie XYandZ: Volcanion to Karakuri no Magearna','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,25805,'Pokemon the Movie XY: Ring no Choumajin Hoopa','Movie',1,1,NULL,NULL,6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,21569,'Pokemon XY: Hakai no Mayu to Diancie','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1119,'Pokemon: Celebi Toki wo Koeta Deai','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1118,'Pokemon: Kesshoutou no Teiou Entei','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34540,'Pokemon: Kimi ni Kimeta!','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1117,'Pokemon: Maboroshi no Pokemon Lugia Bakutan','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,528,'Pokemon: Mewtwo no Gyakushuu','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,1120,'Pokemon: Mizu no Miyako no Mamorigami Latias to Latios','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,20159,'Pokemon: The Origin','Special',4,4,NULL,'2017-12-12',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35330,'Poputepipikku','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,13601,'Psycho-Pass','TV',22,22,'2017-05-09','2017-05-18',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,23281,'Psycho-Pass 2','TV',11,11,'2017-05-22','2017-05-22',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,21339,'Psycho-Pass Movie','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual;
INSERT INTO myanimelist_anime
	SELECT 5848785,37440,'Psycho-Pass SS Case 1: Tsumi to Batsu','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37441,'Psycho-Pass SS Case 2: First Guardian','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37442,'Psycho-Pass SS Case 3: Onshuu no Kanata ni','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31240,'Re:Zero kara Hajimeru Isekai Seikatsu','TV',25,25,NULL,'2018-01-05',5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,30015,'ReLIFE','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,12477,'Sakasama no Patema','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,13759,'Sakurasou no Pet na Kanojo','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11499,'Sankarea','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35851,'Sayonara no Asa ni Yakusoku no Hana wo Kazarou','Movie',1,1,NULL,NULL,5,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2605,'Sayonara Zetsubou Sensei','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37450,'Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,22273,'Selector Infected WIXOSS','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,199,'Sen to Chihiro no Kamikakushi','Movie',1,1,'2017-07-16','2017-07-16',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,339,'Serial Experiments Lain','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,154,'Shaman King','TV',64,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,23273,'Shigatsu wa Kimi no Uso','TV',22,22,'2017-08-17','2017-08-22',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28069,'Shigatsu wa Kimi no Uso: Moments','OVA',1,1,'2017-11-15','2017-11-15',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37396,'Shikioriori','Movie',3,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,16498,'Shingeki no Kyojin','TV',25,25,NULL,NULL,9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,18397,'Shingeki no Kyojin OVA','OVA',3,3,'2017-12-06','2017-12-06',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,25777,'Shingeki no Kyojin Season 2','TV',12,12,'2017-04-02','2017-06-29',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35760,'Shingeki no Kyojin Season 3','TV',12,1,NULL,NULL,0,'On-Hold',0,0,0 FROM dual UNION ALL
	SELECT 5848785,38524,'Shingeki no Kyojin Season 3 Part 2','TV',0,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,19285,'Shingeki no Kyojin: Ano Hi Kara','Special',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,25781,'Shingeki no Kyojin: Kuinaki Sentaku','OVA',2,2,'2017-12-07','2017-12-07',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36106,'Shingeki no Kyojin: Lost Girls','OVA',3,1,NULL,NULL,0,'On-Hold',0,0,0 FROM dual UNION ALL
	SELECT 5848785,13125,'Shinsekai yori','TV',25,25,'2018-04-30','2018-05-06',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28171,'Shokugeki no Souma','TV',24,24,'2017-06-30','2017-07-06',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31327,'Shokugeki no Souma OVA','OVA',2,2,'2017-12-04','2017-12-04',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32282,'Shokugeki no Souma: Ni no Sara','TV',13,13,'2017-07-08','2017-07-11',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34480,'Shokugeki no Souma: Ni no Sara OVA','OVA',2,2,'2017-12-05','2017-12-05',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35788,'Shokugeki no Souma: San no Sara','TV',12,12,'2017-10-04','2017-12-20',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36962,'Shokugeki no Souma: San no Sara - Kyokuseiryou no Erina','OVA',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36949,'Shokugeki no Souma: San no Sara - Toutsuki Ressha-hen','TV',12,12,NULL,NULL,7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35838,'Shoujo Shuumatsu Ryokou','TV',12,12,NULL,'2018-09-16',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35839,'Sora yori mo Tooi Basho','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,9253,'Steins;Gate','TV',24,24,'2018-01-15','2018-01-22',9,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,30484,'Steins;Gate 0','TV',23,23,NULL,'2018-09-27',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37492,'Steins;Gate 0: Kesshou Takei no Valentine - Bittersweet Intermedio','Special',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11577,'Steins;Gate Movie: Fuka Ryouiki no Déjà vu','Movie',1,1,'2018-01-23','2018-01-23',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32188,'Steins;Gate: Kyoukaimenjou no Missing Link - Divide By Zero','Special',1,1,NULL,NULL,8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10863,'Steins;Gate: Oukoubakko no Poriomania','Special',1,1,'2018-01-22','2018-01-22',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,5681,'Summer Wars','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,7311,'Suzumiya Haruhi no Shoushitsu','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,849,'Suzumiya Haruhi no Yuuutsu','TV',14,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11757,'Sword Art Online','TV',25,25,NULL,NULL,8,'Completed',1,0,0 FROM dual UNION ALL
	SELECT 5848785,36475,'Sword Art Online Alternative: Gun Gale Online','TV',12,1,NULL,NULL,0,'Dropped',0,0,0 FROM dual UNION ALL
	SELECT 5848785,21881,'Sword Art Online II','TV',24,24,NULL,NULL,7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,31765,'Sword Art Online Movie: Ordinal Scale','Movie',1,1,'2017-12-29','2017-12-29',7,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36474,'Sword Art Online: Alicization','TV',0,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2001,'Tengen Toppa Gurren Lagann','TV',27,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,38826,'Tenki no Ko','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,513,'Tenkuu no Shiro Laputa','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,2236,'Toki wo Kakeru Shoujo','Movie',1,1,'2017-04-12','2017-04-12',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,22319,'Tokyo Ghoul','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,6211,'Tokyo Magnitude 8.0','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,14227,'Tonari no Kaibutsu-kun','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,523,'Tonari no Totoro','Movie',1,1,NULL,NULL,6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,415,'Tonari no Yamada-kun','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,4224,'Toradora!','TV',25,25,NULL,'2019-01-19',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,11553,'Toradora!: Bentou no Gokui','Special',1,1,NULL,'2019-01-19',6,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34822,'Tsuki ga Kirei','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,28025,'Tsukimonogatari','TV',4,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,12431,'Uchuu Kyoudai','TV',99,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,743,'Umi ga Kikoeru','Special',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10162,'Usagi Drop','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,33352,'Violet Evergarden','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,861,'xxxHOLiC','TV',24,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37786,'Yagate Kimi ni Naru','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,14813,'Yahari Ore no Seishun Love Comedy wa Machigatteiru.','TV',13,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,37779,'Yakusoku no Neverland','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,7785,'Yojouhan Shinwa Taikei','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35507,'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,32995,'Yuri!!! on Ice','TV',12,12,'2017-04-04','2017-04-06',8,'Completed',0,0,0 FROM dual UNION ALL
	SELECT 5848785,35500,'Yuri!!! on Ice The Movie: Ice Adolescence','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,34798,'Yuru Camp△','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,10495,'Yuru Yuri','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,392,'Yuu☆Yuu☆Hakusho','TV',112,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,25519,'Yuuki Yuuna wa Yuusha de Aru','TV',12,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,23283,'Zankyou no Terror','TV',11,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual UNION ALL
	SELECT 5848785,36999,'Zoku Owarimonogatari','Movie',1,0,NULL,NULL,0,'Plan to Watch',0,0,0 FROM dual;
