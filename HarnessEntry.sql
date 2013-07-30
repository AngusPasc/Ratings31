/* SQL-92 Table Creation Script with DBISAM Extensions */

CREATE TABLE IF NOT EXISTS "C:\BuggyData\HarnessEntry"
(
   "TrkCode" VARCHAR(3) NOT NULL,
   "RaceDate" DATE NOT NULL,
   "RangeRaceDate" DATE,
   "RaceNbr" SMALLINT NOT NULL,
   "PostPos" SMALLINT NOT NULL,
   "ProgramNbr" VARCHAR(10),
   "ProgramNbrSort" SMALLINT,
   "HorseName" VARCHAR(25),
   "OwnerName" VARCHAR(30),
   "BreederName" VARCHAR(30),
   "FinishPos" SMALLINT DEFAULT 0,
   "Odds" FLOAT DEFAULT 0,
   "Distance" VARCHAR(10),
   "Gait" VARCHAR(5),
   "WinIndex" SMALLINT DEFAULT 0,
   "WinIndexRank" SMALLINT DEFAULT 0,
   "MorningLineDesc" VARCHAR(15),
   "MorningLineTo1" FLOAT DEFAULT 0,
   "MorningLineTo1Rank" SMALLINT DEFAULT 0,
   "Med" VARCHAR(5),
   "Equip" VARCHAR(5),
   "Power" FLOAT DEFAULT 0,
   "PowerRank" SMALLINT DEFAULT 0,
   "ValueIndicator" VARCHAR(1),
   "AvgSpeed" SMALLINT DEFAULT 0,
   "AvgSpeedRank" SMALLINT DEFAULT 0,
   "AvgClass" SMALLINT DEFAULT 0,
   "AvgClassRank" SMALLINT DEFAULT 0,
   "ClassChange" VARCHAR(5),
   "PaceStyle1stQ" FLOAT DEFAULT 0,
   "PaceStyle1stQRank" SMALLINT,
   "PaceStyle2ndQ" FLOAT DEFAULT 0,
   "PaceStyle2ndQRank" SMALLINT,
   "PaceStyle3rdQ" FLOAT DEFAULT 0,
   "PaceStyle3rdQRank" SMALLINT,
   "PaceStyleFinish" FLOAT DEFAULT 0,
   "PaceStyleFinishRank" SMALLINT,
   "PaceStyleNbrOfRaces" SMALLINT DEFAULT 0,
   "Trainer" VARCHAR(30),
   "TrnStarts" SMALLINT DEFAULT 0,
   "TrnWinPct" SMALLINT DEFAULT 0,
   "TrnWinPctRank" SMALLINT DEFAULT 0,
   "TrnPlcPct" SMALLINT DEFAULT 0,
   "TrnShoPct" SMALLINT DEFAULT 0,
   "TrnUTR" FLOAT DEFAULT 0,
   "TrnUTRRank" SMALLINT DEFAULT 0,
   "Driver" VARCHAR(25),
   "DrvStarts" SMALLINT DEFAULT 0,
   "DrvWinPct" SMALLINT DEFAULT 0,
   "DrvWinPctRank" SMALLINT DEFAULT 0,
   "DrvPlcPct" SMALLINT DEFAULT 0,
   "DrvShoPct" SMALLINT DEFAULT 0,
   "DrvUDR" FLOAT DEFAULT 0,
   "DrvUDRRank" SMALLINT DEFAULT 0,
   "TrnDrvStarts" SMALLINT DEFAULT 0,
   "TrnDrvWinPct" SMALLINT DEFAULT 0,
   "TrnDrvWinPctRank" SMALLINT DEFAULT 0,
   "Race1BackDaysAgo" SMALLINT DEFAULT 0,
   "Race1BackTrkCode" VARCHAR(5),
   "Race1BackSpeed" SMALLINT DEFAULT 0,
   "Race1BackClass" SMALLINT DEFAULT 0,
   "Race1BackTime" VARCHAR(7) DEFAULT '0',
   "Race1Back4thQ" FLOAT DEFAULT 0,
   "Race1BackFinish" VARCHAR(5) DEFAULT '0',
   "Race1BackFinishLengths" VARCHAR(5),
   "Race1BackTrackSize" VARCHAR(7),
   "Race1BackPost" SMALLINT,
   "Race1BackGait" VARCHAR(1),
   "Race1BackCond" VARCHAR(2),
   "Race1BackClassDesc" VARCHAR(15),
   "Race1BackComment" VARCHAR(15),
   "Race1BackClaimed" VARCHAR(9),
   "Race2BackDaysAgo" SMALLINT DEFAULT 0,
   "Race2BackTrkCode" VARCHAR(5),
   "Race2BackSpeed" SMALLINT DEFAULT 0,
   "Race2BackClass" SMALLINT DEFAULT 0,
   "Race2BackTime" VARCHAR(7) DEFAULT '0',
   "Race2Back4thQ" FLOAT DEFAULT 0,
   "Race2BackFinish" VARCHAR(5) DEFAULT '0',
   "Race2BackFinishLengths" VARCHAR(5),
   "Race2BackTrackSize" VARCHAR(7),
   "Race2BackPost" SMALLINT,
   "Race2BackGait" VARCHAR(1),
   "Race2BackCond" VARCHAR(2),
   "Race2BackClassDesc" VARCHAR(15),
   "Race2BackComment" VARCHAR(15),
   "Race2BackClaimed" VARCHAR(9),
   "Race3BackDaysAgo" SMALLINT DEFAULT 0,
   "Race3BackTrkCode" VARCHAR(5),
   "Race3BackSpeed" SMALLINT DEFAULT 0,
   "Race3BackClass" SMALLINT DEFAULT 0,
   "Race3BackTime" VARCHAR(7) DEFAULT '0',
   "Race3Back4thQ" FLOAT DEFAULT 0,
   "Race3BackFinish" VARCHAR(5) DEFAULT '0',
   "Race3BackFinishLengths" VARCHAR(5),
   "Race3BackTrackSize" VARCHAR(7),
   "Race3BackPost" SMALLINT,
   "Race3BackGait" VARCHAR(1),
   "Race3BackCond" VARCHAR(2),
   "Race3BackClassDesc" VARCHAR(15),
   "Race3BackComment" VARCHAR(15),
   "Race3BackClaimed" VARCHAR(9),
   "ThisYearStarts" SMALLINT DEFAULT 0,
   "ThisYearWins" SMALLINT DEFAULT 0,
   "ThisYearPlcs" SMALLINT DEFAULT 0,
   "ThisYearShos" SMALLINT DEFAULT 0,
   "ThisYearEPS" INTEGER DEFAULT 0,
   "ThisYearBestTime" VARCHAR(7) DEFAULT '0',
   "ThisYearBestTimeTrkCode" VARCHAR(5),
   "LastYearStarts" SMALLINT DEFAULT 0,
   "LastYearWins" SMALLINT DEFAULT 0,
   "LastYearPlcs" SMALLINT DEFAULT 0,
   "LastYearShos" SMALLINT DEFAULT 0,
   "LastYearEPS" INTEGER DEFAULT 0,
   "LastYearBestTime" VARCHAR(7) DEFAULT '0',
   "LastYearBestTimeTrkCode" VARCHAR(5),
   "Last6Earnings" FLOAT DEFAULT 0,
   "Last6EarningsRank" INTEGER DEFAULT 0,
   "SireStarts" SMALLINT DEFAULT 0,
   "SireWinPct" SMALLINT DEFAULT 0,
   "SireWinPctRank" SMALLINT DEFAULT 0,
   "IsPrintedOnValueSheet" BOOLEAN DEFAULT True,
   "IsYouBetTrack" BOOLEAN DEFAULT False,
   "DollarIndicator" VARCHAR(2) DEFAULT 'NO',
   "FinalKey" VARCHAR(30),
   "FinalStarts" INTEGER DEFAULT 0,
   "FinalWins" INTEGER DEFAULT 0,
   "FinalWinPct" FLOAT DEFAULT 0,
   "FinalWinPctRank" SMALLINT DEFAULT 0,
   "FinalValueBet" FLOAT DEFAULT 0,
   "PostPosKey" VARCHAR(30),
   "PostPosStarts" INTEGER DEFAULT 0,
   "PostPosWins" INTEGER DEFAULT 0,
   "PostPosWinPct" FLOAT DEFAULT 0,
   "PostPosWinPctRank" SMALLINT DEFAULT 0,
   "PostPosValueBet" FLOAT DEFAULT 0,
   "ConnectionKey" VARCHAR(30),
   "ConnectionStarts" INTEGER DEFAULT 0,
   "ConnectionWins" INTEGER DEFAULT 0,
   "ConnectionWinPct" FLOAT DEFAULT 0,
   "ConnectionWinPctRank" SMALLINT DEFAULT 0,
   "ConnectionValueBet" FLOAT DEFAULT 0,
   "DefaultKey" VARCHAR(30),
   "DefaultStarts" INTEGER DEFAULT 0,
   "DefaultWins" INTEGER DEFAULT 0,
   "DefaultWinPct" FLOAT DEFAULT 0,
   "DefaultWinPctRank" SMALLINT DEFAULT 0,
   "DefaultValueBet" FLOAT DEFAULT 0,
PRIMARY KEY ("TrkCode","RaceDate","RaceNbr","ProgramNbr") COMPRESS NONE
INDEX PAGE SIZE 16384
LOCALE CODE 0
USER MAJOR VERSION 1
);

CREATE INDEX IF NOT EXISTS "ByPowerRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","Power" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByAvgSpeedRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","AvgSpeed" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByAvgClassRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","AvgClass" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByTrnWinPctRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","TrnWinPct" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByTrnUTRRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","TrnUTR" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByDrvWinPctRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","DrvWinPct" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByDrvUDRRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","DrvUDR" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByWinIndexRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","WinIndex" DESC,"Power");
CREATE INDEX IF NOT EXISTS "ByMorningLineTo1Rank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","MorningLineTo1","Power");
CREATE INDEX IF NOT EXISTS "ByLast6EarningsRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","Last6Earnings" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "BySireWinPctRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","SireWinPct" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByFinalWinPctRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","FinalWinPct" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByRaceDate" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","RaceDate","TrkCode","RaceNbr","ProgramNbr");
CREATE INDEX IF NOT EXISTS "ByPostPos" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","PostPos");
CREATE INDEX IF NOT EXISTS "ByRangeRaceDate" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","ProgramNbr");
CREATE INDEX IF NOT EXISTS "ByTrnDrvWinPctRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","TrnDrvWinPct" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByConnectionWinPctRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","ConnectionWinPct" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByPostPosWinPctRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","PostPosWinPct" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByDefaultWinPctRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","DefaultWinPct" DESC,"WinIndex" DESC);
CREATE INDEX IF NOT EXISTS "ByPaceStyle1stQRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","PaceStyle1stQ","WinIndex");
CREATE INDEX IF NOT EXISTS "ByPaceStyle2ndQRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","PaceStyle2ndQ","WinIndex");
CREATE INDEX IF NOT EXISTS "ByPaceStyle3rdQRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","PaceStyle3rdQ","WinIndex");
CREATE INDEX IF NOT EXISTS "ByPaceStyleFinishRank" ON "C:\BuggyData\HarnessEntry" ("RangeRaceDate","TrkCode","RaceDate","RaceNbr","PaceStyleFinish","WinIndex");