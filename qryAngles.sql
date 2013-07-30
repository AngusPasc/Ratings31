SELECT
TrkCode as Track, 
RaceDate, 
RaceNbr, 
PostPos As Post,  
RaceType As Class, 
IF (Surface = 'T', 'Turf', 'Dirt') AS Surface,
MorningLineTo1 as ML, 
Odds, 
DebutIndicator,
TurfIndicator, 
Sex,
Age,
FinishPos,
IF (MorningLineTo1Rank=1, 'Yes','No') AS IsMLFavorite,                                                     
IF (FinishPos = 1, 'WON','LOST') AS Finish, 
IF (DistanceInFurlongs >= 8, 'Route', 'Sprint') AS Distance,
IF (TrnTrackRank > 0 and TrnTrackRank < 21 ,'Yes','No') AS IsTrnTop20Track,
IF (JkyTrackRank > 0 and JkyTrackRank < 21,'Yes','No') AS IsJkyTop20Track,
IF (IsTrnTodayMinus,'Yes','No') AS IsTrnTodayMinus,
IF (OwnWinsRank > 0,'Yes','No') AS IsOwnerTopWins,
IF (OwnEarningsRank,'Yes','No') AS IsOwnerTopEarnings,
IF (IsLayoffAndUp,'Yes','No') AS                                         IsLayoffAndUp                ,
IF (IsClaimedAndUp,'Yes','No') AS                                        IsClaimedAndUp               ,
IF (IsClaimedAndDown,'Yes','No') AS                                      IsClaimedAndDown             ,
IF (IsDollar,'Yes','No') AS                                              IsDollar                     ,
IF (IsDoubleDollar,'Yes','No') AS                                        IsDoubleDollar               ,
IF (IsFrontDoubleLiner,'Yes','No') AS                                    IsFrontDoubleLiner           ,
IF (IsBackDoubleLiner,'Yes','No') AS                                     IsBackDoubleLiner            ,
IF (IsTripleLiner,'Yes','No') AS                                         IsTripleLiner                ,
IF (IsFrontDoubleDot,'Yes','No') AS                                      IsFrontDoubleDot             ,
IF (IsBackDoubleDot,'Yes','No') AS                                       IsBackDoubleDot              ,
IF (IsTripleDot,'Yes','No') AS                                           IsTripleDot                  ,
IF (IsFrontDoubleLiner0,'Yes','No') AS                                   IsFrontDoubleLiner0          ,
IF (IsBackDoubleLiner0,'Yes','No') AS                                    IsBackDoubleLiner0           ,
IF (IsTripleLiner0,'Yes','No') AS                                        IsTripleLiner0               ,
IF (IsFrontDoubleLiner1,'Yes','No') AS                                   IsFrontDoubleLiner1          ,
IF (IsBackDoubleLiner1,'Yes','No') AS                                    IsBackDoubleLiner1           ,
IF (IsTripleLiner1,'Yes','No') AS                                        IsTripleLiner1               ,
IF (IsFrontDoubleLiner2,'Yes','No') AS                                   IsFrontDoubleLiner2          ,
IF (IsBackDoubleLiner2,'Yes','No') AS                                    IsBackDoubleLiner2           ,
IF (IsTripleLiner2,'Yes','No') AS                                        IsTripleLiner2               ,
IF (IsFrontDoubleLiner3,'Yes','No') AS                                   IsFrontDoubleLiner3          ,
IF (IsBackDoubleLiner3,'Yes','No') AS                                    IsBackDoubleLiner3           ,
IF (IsTripleLiner3,'Yes','No') AS                                        IsTripleLiner3               ,
IF (IsBlinkersOn, 'Yes','No') AS IsBlinkersOn,
IF (IsBlinkersOff, 'Yes','No') AS IsBlinkersOff,
IF (NbrWorksLast > 0,'Yes','No') AS WorkedSinceLast,
IF (StartsWorks21 > 0,'Yes','No') AS StartedWorkedLast21,
IF (StartsWorks21 > 0 or NbrWorksLast > 0 ,'Yes','No') AS IsActive,
IF (IsClaimed1Back,'Yes','No') AS IsClaimed1Back ,
IF (IsClaimed2Back,'Yes','No') AS IsClaimed2Back  ,
IF (IsDirtToTurf ,'Yes','No') AS IsDirtToTurf ,
IF (IsTurfToDirt ,'Yes','No') AS IsTurfToDirt,
IF (IsSprToRte ,'Yes','No') AS IsSprToRte,
IF (IsRteToSpr,'Yes','No') AS IsRteToSpr,
IF (IsUpInClass,'Yes','No') AS IsUpInClass,
IF (IsDownInClass,'Yes','No') AS IsDownInClass,
IF (Is1stClaiming ,'Yes','No') AS Is1stClaiming,
IF (Is1stMCL,'Yes','No') AS Is1stMCL,
IF (IsHiddenWorkout ,'Yes','No') AS IsHiddenWorkout,
IF (Is1stAfterLayoff,'Yes','No') AS Is1stAfterLayoff,
IF (Is2ndAfterLayoff,'Yes','No') AS Is2ndAfterLayoff,                           
IF (Is3rdAfterLayoff,'Yes','No') AS Is3rdAfterLayoff,                           
IF (IsDirtToTurfToDirtAfterLayoff,'Yes','No') AS IsDirtToTurfToDirtAfterLayoff,
IF (IsTurfToDirtToTurfAfterLayoff,'Yes','No') AS IsTurfToDirtToTurfAfterLayoff,
IF (IsRouteToSprintToRouteAfterLayoff,'Yes','No') AS IsRouteToSprintToRouteAfterLayoff,
IF (IsSprintToRouteToSprintAfterLayoff,'Yes','No') AS IsSprintToRouteToSprintAfterLayoff,
IF (IsOnlySpeed,'Yes','No') AS IsOnlySpeed,
IF (IsProvenSpeed,'Yes','No') AS IsProvenSpeed,
IF (IsProvenSpeedPlus,'Yes','No') AS IsProvenSpeedPlus,
IF (IsXtremeSpeed,'Yes','No') AS IsXtremeSpeed,
IF (IsLastRaceTurnMove,'Yes','No') AS IsLastRaceTurnMove,
IF (IsLastRaceFinalFurlongMove,'Yes','No') AS IsLastRaceFinalFurlongMove,
IF (IsPrevToLastRaceTurnMove,'Yes','No') AS IsPrevToLastRaceTurnMove,
IF (IsPrevToLastRaceFinalFurlongMove,'Yes','No') AS IsPrevToLastRaceFinalFurlongMove,
IF (Is2yoBred,'Yes','No') AS Is2yoBred, 
IF (Is1stBred,'Yes','No') AS Is1stBred,
IF (IsTurfBred,'Yes','No') AS IsTurfBred,
IF (IsKeyRace,'Yes','No') AS IsKeyRace,
IF (IsBouncyBouncy,'Yes','No') AS IsBouncyBouncy,
IF (IsBestEffortLast,'Yes','No') AS IsBestEffortLast,
IF (IsShipIn,'Yes','No') AS IsShipIn,
IF (IsYouBetTrack,'Yes','No') AS IsYouBetTrack,
IF (IsVerifiedClaim,'Yes','No') AS IsVerifiedClaim,
IF (IsBetLast,'Yes','No') AS IsBetLast,
IF (IsUltimateFormFactor,'Yes','No') AS IsUltimateFormFactor,
IF (IsFormConsistent ,'Yes','No') AS IsFormConsistent,
IF (IsUnexpectedEarlySpeed ,'Yes','No') AS IsUnexpectedEarlySpeed ,
IF (IsFirstTimeJuice,'Yes','No') AS IsFirstTimeJuice,
IF (IsSecondTimeJuice,'Yes','No') AS IsSecondTimeJuice, 
IF (FinishPos < 2, Odds,0)  As WinsOdds,
IF (FinishPos > 1, Odds,0)  As OtherOdds
INTO qryAngles
FROM HorseHistory 
WHERE 
(RaceDate >= '2006-03-01') AND
(Odds > 0) AND
(FinishPos > 0) AND 
(IsYouBetTrack=TRUE);