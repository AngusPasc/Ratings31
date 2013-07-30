/* SQL-92 Table Creation Script with DBISAM Extensions */

CREATE TABLE IF NOT EXISTS "C:\KSKData\RaceHistory"
(
   "TrkCode" VARCHAR(3) NOT NULL,
   "RaceDate" DATE NOT NULL,
   "RaceNbr" SMALLINT NOT NULL,
   "IsEquibaseChartsProcessed" BOOLEAN DEFAULT False,
   "IsDRFChartsProcessed" BOOLEAN DEFAULT False,
   "RaceType" VARCHAR(5) NOT NULL,
   "TypeOfRace" VARCHAR(1) DEFAULT 'T',
   "Surface" VARCHAR(1) DEFAULT 'D',
   "OrigSurface" VARCHAR(1) DEFAULT 'D',
   "DistanceInFeet" SMALLINT DEFAULT 0,
   "DistanceInFurlongs" FLOAT DEFAULT 0,
   "DistanceInYards" SMALLINT DEFAULT 0,
   "IsPk3Race" BOOLEAN DEFAULT False,
   "Pk3RaceNbr" SMALLINT,
   "IsPk4Race" BOOLEAN DEFAULT False,
   "Pk4RaceNbr" SMALLINT,
   "IsPk6Race" BOOLEAN DEFAULT False,
   "Pk6RaceNbr" SMALLINT,
   "IsTriRace" BOOLEAN DEFAULT False,
   "IsSuperRace" BOOLEAN DEFAULT False,
   "IsPk9Place" BOOLEAN DEFAULT False,
   "Pk9RaceNbr" SMALLINT,
   "IsExaRace" BOOLEAN DEFAULT False,
   "IsQuiRace" BOOLEAN DEFAULT False,
   "IsDDRace" BOOLEAN DEFAULT False,
   "DDRaceNbr" SMALLINT,
   "IsPk3Leg1" BOOLEAN DEFAULT False,
   "IsPk4Leg1" BOOLEAN DEFAULT False,
   "IsPk6Leg1" BOOLEAN DEFAULT False,
   "IsPk9Leg1" BOOLEAN DEFAULT False,
   "IsDDLeg1" BOOLEAN DEFAULT False,
   "RaceCondition1" VARCHAR(40),
   "RaceCondition2" VARCHAR(40),
   "RaceCondition3" VARCHAR(40),
   "RaceCondition4" VARCHAR(40),
   "RaceCondition5" VARCHAR(40),
   "RaceCondition6" VARCHAR(40),
   "RaceCondition7" VARCHAR(40),
   "RaceCondition8" VARCHAR(40),
   "RaceCondition9" VARCHAR(40),
   "RaceCondition10" VARCHAR(40),
   "BetLine" VARCHAR(255),
   "Purse" FLOAT DEFAULT 0,
   "ClaimingPrice" FLOAT DEFAULT 0,
   "RaceConditions" VARCHAR(15),
   "TrkCond" VARCHAR(3) DEFAULT 'FT',
   "DistanceDesc" VARCHAR(5),
   "OrigDistanceDesc" VARCHAR(20),
   "LocalTimeOfRace" TIME,
   "EstTimeOfRace" TIME,
   "EstTimeOfFirstRace" TIME,
   "IsFinalValue" BOOLEAN DEFAULT False,
   "IsActive" BOOLEAN DEFAULT False,
   "IsPPValue" BOOLEAN DEFAULT False,
   "IsMLValue" BOOLEAN DEFAULT False,
   "IsChalkValue" BOOLEAN DEFAULT False,
   "IsPlayableValue" BOOLEAN DEFAULT False,
   "IsPrintedOnValueSheet" BOOLEAN DEFAULT False,
   "IsLinerSheetSelected" BOOLEAN DEFAULT False,
   "IsOverlaySheetSelected" BOOLEAN DEFAULT False,
   "IsWagerSheetSelected" BOOLEAN DEFAULT False,
   "IsYouBetTrack" BOOLEAN DEFAULT False,
   "FootNotes" MEMO,
   "Trainers" VARCHAR(512),
   "Owners" VARCHAR(512),
   "ScratchedHorses" VARCHAR(512),
   "FractionalTimes" VARCHAR(100),
   "IsExactaMatched" BOOLEAN DEFAULT False,
   "Exacta" VARCHAR(40),
   "ExactaNbrs" VARCHAR(50),
   "ExactaWager" SMALLINT DEFAULT 0,
   "ExactaPayout" FLOAT DEFAULT 0,
   "IsTrifectaMatched" BOOLEAN DEFAULT False,
   "Tri" VARCHAR(40),
   "TrifectaNbrs" VARCHAR(50),
   "TrifectaWager" SMALLINT DEFAULT 0,
   "TrifectaPayout" FLOAT DEFAULT 0,
   "IsSuperfectaMatched" BOOLEAN DEFAULT False,
   "Super" VARCHAR(40),
   "SuperfectaNbrs" VARCHAR(50),
   "SuperfectaWager" SMALLINT DEFAULT 0,
   "SuperfectaPayout" FLOAT DEFAULT 0,
   "IsDailyDoubleMatchedFirstRace" BOOLEAN DEFAULT False,
   "IsDailyDoubleMatchedLastRace" BOOLEAN DEFAULT False,
   "DDFirstRace" VARCHAR(40),
   "DDLastRace" VARCHAR(40),
   "DailyDoubleNbrsFirstRace" VARCHAR(50),
   "DailyDoubleNbrsLastRace" VARCHAR(50),
   "DailyDoubleWagerFirstRace" SMALLINT DEFAULT 0,
   "DailyDoubleWagerLastRace" SMALLINT DEFAULT 0,
   "DailyDoublePayoutFirstRace" FLOAT DEFAULT 0,
   "DailyDoublePayoutLastRace" FLOAT DEFAULT 0,
   "IsQuinellaMatched" BOOLEAN DEFAULT False,
   "Quinella" VARCHAR(40),
   "QuinellaNbrs" VARCHAR(50),
   "QuinellaWager" SMALLINT DEFAULT 0,
   "QuinellaPayout" FLOAT DEFAULT 0,
   "IsPick3MatchedFirstRace" BOOLEAN DEFAULT False,
   "IsPick3MatchedLastRace" BOOLEAN DEFAULT False,
   "Pick3FirstRace" VARCHAR(40),
   "Pick3LastRace" VARCHAR(40),
   "Pick3NbrsFirstRace" VARCHAR(50),
   "Pick3NbrsLastRace" VARCHAR(50),
   "Pick3WagerFirstRace" SMALLINT DEFAULT 0,
   "Pick3WagerLastRace" SMALLINT DEFAULT 0,
   "Pick3PayoutFirstRace" FLOAT DEFAULT 0,
   "Pick3PayoutLastRace" FLOAT DEFAULT 0,
   "Pick3NbrsLeg1" VARCHAR(25),
   "Pick3NbrsLeg2" VARCHAR(25),
   "Pick3NbrsLeg3" VARCHAR(25),
   "IsPick4MatchedFirstRace" BOOLEAN DEFAULT False,
   "IsPick4MatchedLastRace" BOOLEAN DEFAULT False,
   "Pick4FirstRace" VARCHAR(40),
   "Pick4LastRace" VARCHAR(40),
   "Pick4NbrsFirstRace" VARCHAR(50),
   "Pick4NbrsLastRace" VARCHAR(50),
   "Pick4WagerFirstRace" SMALLINT DEFAULT 0,
   "Pick4WagerLastRace" SMALLINT DEFAULT 0,
   "Pick4PayoutFirstRace" FLOAT DEFAULT 0,
   "Pick4PayoutLastRace" FLOAT DEFAULT 0,
   "Pick4NbrsLeg1" VARCHAR(25),
   "Pick4NbrsLeg2" VARCHAR(25),
   "Pick4NbrsLeg3" VARCHAR(25),
   "Pick4NbrsLeg4" VARCHAR(25),
   "IsPick6MatchedFirstRace" BOOLEAN DEFAULT False,
   "IsPick6MatchedLastRace" BOOLEAN DEFAULT False,
   "Pick6FirstRace" VARCHAR(40),
   "Pick6LastRace" VARCHAR(40),
   "Pick6NbrsFirstRace" VARCHAR(50),
   "Pick6NbrsLastRace" VARCHAR(50),
   "Pick6WagerFirstRace" SMALLINT DEFAULT 0,
   "Pick6WagerLastRace" SMALLINT DEFAULT 0,
   "Pick6PayoutFirstRace" FLOAT DEFAULT 0,
   "Pick6PayoutLastRace" FLOAT DEFAULT 0,
   "IsWinMatched" BOOLEAN DEFAULT False,
   "WinNbrs" VARCHAR(50),
   "WinPayout" FLOAT DEFAULT 0,
   "WinPlcPayout" FLOAT DEFAULT 0,
   "WinShoPayout" FLOAT DEFAULT 0,
   "IsPlcMatched" BOOLEAN DEFAULT False,
   "PlcNbrs" VARCHAR(50),
   "PlcPayout" FLOAT DEFAULT 0,
   "PlcShoPayout" FLOAT DEFAULT 0,
   "IsShoMatched" BOOLEAN DEFAULT False,
   "ShoNbrs" VARCHAR(50),
   "ShoPayout" FLOAT DEFAULT 0,
   "Weather" VARCHAR(100),
   "Value" VARCHAR(10),
   "Chalk" VARCHAR(10),
   "Wager1" VARCHAR(40),
   "Wager2" VARCHAR(40),
   "Wager3" VARCHAR(40),
   "Wager4" VARCHAR(40),
   "Wager5" VARCHAR(40),
   "Wager6" VARCHAR(40),
   "AltWager1" VARCHAR(40),
   "AltWager2" VARCHAR(40),
   "AltWager3" VARCHAR(40),
   "AltWager4" VARCHAR(40),
   "AltWager5" VARCHAR(40),
   "AltWager6" VARCHAR(40),
   "WagerFinalOrder" VARCHAR(40),
   "WagerSheetOrder" VARCHAR(40),
   "WPSWagerAmt" FLOAT,
   "ExaWagerAmt" FLOAT,
   "QuiWagerAmt" FLOAT,
   "DDWagerAmt" FLOAT,
   "Pk3WagerAmt" FLOAT,
   "Pk4WagerAmt" FLOAT,
   "Pk6WagerAmt" FLOAT,
   "TriWagerAmt" FLOAT,
   "SfcWagerAmt" FLOAT,
   "NbrStarters" SMALLINT DEFAULT 0,
   "NbrDebutStarters" SMALLINT DEFAULT 0,
   "NbrDebutTwoStarters" SMALLINT DEFAULT 0,
   "NbrTurfDebutStarters" SMALLINT DEFAULT 0,
   "NbrRouteDebutStarters" SMALLINT DEFAULT 0,
   "NbrScratchedStarters" SMALLINT DEFAULT 0,
   "NbrRunners" SMALLINT DEFAULT 0,
PRIMARY KEY ("TrkCode","RaceDate","RaceNbr") COMPRESS DUPBYTE
INDEX PAGE SIZE 16384
BLOB BLOCK SIZE 1024
LOCALE CODE 0
USER MAJOR VERSION 1
);

CREATE INDEX IF NOT EXISTS "ByRaceDate" ON "C:\KSKData\RaceHistory" ("RaceDate");
CREATE INDEX IF NOT EXISTS "ByRangeRaceDate" ON "C:\KSKData\RaceHistory" ("RaceDate","TrkCode","RaceDate","RaceNbr") COMPRESS FULL;
CREATE INDEX IF NOT EXISTS "ByNbrRunners" ON "C:\KSKData\RaceHistory" ("NbrRunners") COMPRESS FULL;
