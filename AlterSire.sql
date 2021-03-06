ALTER TABLE Sire
ADD IF NOT EXISTS TurfLastYearRank INTEGER DEFAULT 9999,
ADD IF NOT EXISTS TurfLastYearStarts INTEGER DEFAULT 0,
ADD IF NOT EXISTS TurfLastYearWins INTEGER DEFAULT 0,
ADD IF NOT EXISTS TurfLastYearStakeWins INTEGER DEFAULT 0,
ADD IF NOT EXISTS TurfLastYearPctOfEarnings INTEGER DEFAULT 0,

ADD IF NOT EXISTS GeneralLastYearRank INTEGER DEFAULT 9999, 
ADD IF NOT EXISTS GeneralLastYearStudFee FLOAT DEFAULT 0, 
ADD IF NOT EXISTS JuvenileLastYearRank INTEGER DEFAULT 9999 ,
ADD IF NOT EXISTS JuvenileThisYearStudFee FLOAT DEFAULT 0, 

ADD IF NOT EXISTS TurfThisLastRank INTEGER DEFAULT 9999,
ADD IF NOT EXISTS TurfThisYearStarts INTEGER DEFAULT 0,
ADD IF NOT EXISTS TurfThisYearWins INTEGER DEFAULT 0,
ADD IF NOT EXISTS TurfThisYearStakeWins INTEGER DEFAULT 0,
ADD IF NOT EXISTS TurfThisYearPctOfEarnings INTEGER DEFAULT 0,

ADD IF NOT EXISTS GeneralThisYearRank INTEGER DEFAULT 9999, 
ADD IF NOT EXISTS GeneralThisYearStudFee FLOAT DEFAULT 0, 
ADD IF NOT EXISTS JuvenileThisYearRank INTEGER DEFAULT 9999,
ADD IF NOT EXISTS JuvenileThisYearStudFee FLOAT DEFAULT 0         ;

