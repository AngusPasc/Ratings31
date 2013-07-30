alter TABLE ratings

add if not exists LastBL1stCall FLOAT DEFAULT 0,
add if not exists LastBL2ndCall FLOAT DEFAULT 0,
add if not exists LastBLStrCall FLOAT DEFAULT 0,
add if not exists LastBLFinCall FLOAT DEFAULT 0,

add if not exists Last2BL1stCall FLOAT DEFAULT 0,
add if not exists Last2BL2ndCall FLOAT DEFAULT 0,
add if not exists Last2BLStrCall FLOAT DEFAULT 0,
add if not exists Last2BLFinCall FLOAT DEFAULT 0,

add if not exists Last3BL1stCall FLOAT DEFAULT 0,
add if not exists Last3BL2ndCall FLOAT DEFAULT 0,
add if not exists Last3BLStrCall FLOAT DEFAULT 0,
add if not exists Last3BLFinCall FLOAT DEFAULT 0,

add if not exists LastPos1stCall FLOAT DEFAULT 0,
add if not exists LastPos2ndCall FLOAT DEFAULT 0,
add if not exists LastPosStrCall FLOAT DEFAULT 0,
add if not exists LastPosFinCall FLOAT DEFAULT 0,

add if not exists Last2Pos1stCall FLOAT DEFAULT 0,
add if not exists Last2Pos2ndCall FLOAT DEFAULT 0,
add if not exists Last2PosStrCall FLOAT DEFAULT 0,
add if not exists Last2PosFinCall FLOAT DEFAULT 0,

add if not exists Last3Pos1stCall FLOAT DEFAULT 0,
add if not exists Last3Pos2ndCall FLOAT DEFAULT 0,
add if not exists Last3PosStrCall FLOAT DEFAULT 0,
add if not exists Last3PosFinCall FLOAT DEFAULT 0,

add if not exists LastTime1stCall FLOAT DEFAULT 0,
add if not exists LastTime2ndCall FLOAT DEFAULT 0,
add if not exists LastTimeStrCall FLOAT DEFAULT 0,
add if not exists LastTimeFinCall FLOAT DEFAULT 0,

add if not exists Last2Time1stCall FLOAT DEFAULT 0,
add if not exists Last2Time2ndCall FLOAT DEFAULT 0,
add if not exists Last2TimeStrCall FLOAT DEFAULT 0,
add if not exists Last2TimeFinCall FLOAT DEFAULT 0,

add if not exists Last3Time1stCall FLOAT DEFAULT 0,
add if not exists Last3Time2ndCall FLOAT DEFAULT 0,
add if not exists Last3TimeStrCall FLOAT DEFAULT 0,
add if not exists Last3TimeFinCall FLOAT DEFAULT 0,

add if not exists Last2TrkCode VARCHAR(3),
add if not exists Last2RaceDate DATE,
add if not exists Last2RaceNbr SMALLINT,
add if not exists Last2PostPos SMALLINT,
add if not exists Last2RaceType VARCHAR(12),
add if not exists Last2RaceConditions VARCHAR(20),
add if not exists Last2DistanceDesc VARCHAR(16),
add if not exists Last2Distance FLOAT,
add if not exists Last2Surf VARCHAR(8),
add if not exists Last2TrkCond VARCHAR(11),
add if not exists Last2Odds FLOAT,
add if not exists Last2FinishPos FLOAT,

add if not exists Last2Comment VARCHAR(22),
add if not exists Last2Comment2 VARCHAR(67),
add if not exists Last2DQIndicator VARCHAR(15),
add if not exists Last2FavoriteIndicator VARCHAR(21),
add if not exists Last2Purse FLOAT,
add if not exists Last2ClmPrice FLOAT,
add if not exists Last2Jockey VARCHAR(15),
add if not exists Last2Claimed VARCHAR(1),
add if not exists Last2TopFinish1 VARCHAR(30),
add if not exists Last2TopFinish2 VARCHAR(30),
add if not exists Last2TopFinish3 VARCHAR(30),

add if not exists Last2Day VARCHAR(2),
add if not exists Last2MonthDesc VARCHAR(3),
add if not exists Last2Year VARCHAR(4),
add if not exists Last2GateBreak VARCHAR(2),
add if not exists Last2Len1Back VARCHAR(7),
add if not exists Last2Len2Back VARCHAR(7),
add if not exists Last2StLenBack VARCHAR(7),
add if not exists Last2FinishBeaten VARCHAR(7),
add if not exists Last2Weight VARCHAR(3),
add if not exists Last2TrackVariant VARCHAR(3),
add if not exists Last2Class VARCHAR(3),
add if not exists Last2HorseTime VARCHAR(7),
add if not exists Last2SRWinner VARCHAR(3),
add if not exists Last3TrkCode VARCHAR(3),
add if not exists Last3RaceDate DATE,
add if not exists Last3RaceNbr SMALLINT,
add if not exists Last3PostPos SMALLINT,
add if not exists Last3RaceType VARCHAR(12),
add if not exists Last3RaceConditions VARCHAR(20),
add if not exists Last3DistanceDesc VARCHAR(16),
add if not exists Last3Distance FLOAT,
add if not exists Last3Surf VARCHAR(8),
add if not exists Last3TrkCond VARCHAR(11),
add if not exists Last3Odds FLOAT,

add if not exists Last3FinishPos FLOAT,


add if not exists Last3Comment VARCHAR(22),
add if not exists Last3Comment2 VARCHAR(67),
add if not exists Last3DQIndicator VARCHAR(15),
add if not exists Last3FavoriteIndicator VARCHAR(21),
add if not exists Last3Purse FLOAT,
add if not exists Last3ClmPrice FLOAT,
add if not exists Last3Jockey VARCHAR(15),
add if not exists Last3Claimed VARCHAR(1),
add if not exists Last3TopFinish1 VARCHAR(30),
add if not exists Last3TopFinish2 VARCHAR(30),
add if not exists Last3TopFinish3 VARCHAR(30),
add if not exists Last3ClassRating SMALLINT,
add if not exists Last3Pace1 FLOAT,
add if not exists Last3Pace2 FLOAT,
add if not exists Last3Day VARCHAR(2),
add if not exists Last3MonthDesc VARCHAR(3),
add if not exists Last3Year VARCHAR(4),
add if not exists Last3GateBreak VARCHAR(2),
add if not exists Last3Len1Back VARCHAR(7),
add if not exists Last3Len2Back VARCHAR(7),
add if not exists Last3StLenBack VARCHAR(7),
add if not exists Last3FinishBeaten VARCHAR(7),
add if not exists Last3Weight VARCHAR(3),
add if not exists Last3TrackVariant VARCHAR(3),
add if not exists Last3Class VARCHAR(3),
add if not exists Last3HorseTime VARCHAR(7),
add if not exists Last3SRWinner integer,

drop if exists Last3WinTime,
drop if exists Last3Call1st,
drop if exists Last3Call2nd,
drop if exists Last3Call3rd,
drop if exists Last3FinCall,
drop if exists Last2Pace1,
drop if exists Last2Pace2,
drop if exists Back2Pace1,
drop if exists Back2Pace2,
drop if exists Past2Speed,
drop if exists Curr2Class,
drop if exists Back3Pace1,
drop if exists Back3Pace2,
drop if exists Past3Speed,
drop if exists Curr3Class,
drop if exists Last2WinTime,
drop if exists Last2ClassRating,
drop if exists Last2Call1st,
drop if exists Last2Call2nd,
drop if exists Last2Call3rd,
drop if exists Last2FinCall,
drop if exists Last1stCallBL,
drop if exists Last2ndCallBL,
drop if exists LastStCallBL,
drop if exists Last2BL,
drop if exists Last21stCallBL,
drop if exists Last22ndCallBL,
drop if exists Last2StCallBL,
drop if exists Last3BL,
drop if exists Last31stCallBL,
drop if exists Last32ndCallBL,
drop if exists Last3StCallBL,

;
