unit ReportHospital;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ComCtrls, ExtCtrls, DBISAMTb, ppComm, ppRelatv, ppDB, ppDBPipe, Db,
   ppBands, ppClass, ppModule, raCodMod, ppCtrls, ppMemo, ppVar,
   ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache, ppProd, StdCtrls,
   daDataModule, ppParameter, mLog, ppBarCod;

type
   THospitalReportForm = class(TForm)
      dbHospitalReport: TDBISAMDatabase;
      staBar: TStatusBar;
      pnlPrgBar: TPanel;
      prgBar: TProgressBar;
      btnCreatePdf: TButton;
      tblRacesLoop: TDBISAMTable;
      tblRacesMaster: TDBISAMTable;
      plRacesReport: TppDBPipeline;
      dsRacesMaster: TDataSource;
      timCloseFormCheck: TTimer;
      ppParameterList1: TppParameterList;
      dsEntries: TDataSource;
      plEntries: TppDBPipeline;
      ppHospitalReport: TppReport;
      hLog: TmLog;
      tblEntries: TDBISAMTable;
      ppHeaderBand1: TppHeaderBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppLabel24: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppDBText8: TppDBText;
      ppDetailBand1: TppDetailBand;
      ppSubReport1: TppSubReport;
      ppChildReport12: TppChildReport;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppGroupFooterBand2: TppGroupFooterBand;
    aTitleBand: TppTitleBand;
    RaceDesc: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppLabel8: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel20: TppLabel;
    ppLabel9: TppLabel;
    ppLabel30: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel41: TppLabel;
    ppLabel12: TppLabel;
    ppLabel7: TppLabel;
    ppLabel32: TppLabel;
    ppLabel26: TppLabel;
    ppLabel19: TppLabel;
    ppLabel18: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel15: TppLabel;
    ppLabel60: TppLabel;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLabel57: TppLabel;
    RaceCondition: TppDBMemo;
    ppLabel61: TppLabel;
    ppLabel33: TppLabel;
    ppLabel50: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel23: TppLabel;
    ppLabel39: TppLabel;
    ppLabel1: TppLabel;
    lblSireTurf: TppLabel;
    lblSire2yo: TppLabel;
    ppLabel34: TppLabel;
    ppLabel2: TppLabel;
    ppDBText11: TppDBText;
    ppDBText16: TppDBText;
    ppLabel11: TppLabel;
    ppLabel40: TppLabel;
    ppLabel53: TppLabel;
    ppLabel55: TppLabel;
    ppDBText18: TppDBText;
    ppLabel59: TppLabel;
    ppLabel63: TppLabel;
    lblPowerOrder: TppLabel;
    WagerSheetOrder: TppDBText;
    ppLine8: TppLine;
    lblMidPace: TppLabel;
    lblLatePace: TppLabel;
    MidPaceSheetOrder: TppDBText;
    LatePaceSheetOrder: TppDBText;
    ppLine23: TppLine;
    ppLabel3: TppLabel;
    ppLabel13: TppLabel;
    ppDBText25: TppDBText;
    ppLabel16: TppLabel;
    ppDBText27: TppDBText;
    TrainerJockeySheetOrder: TppDBText;
    ppLabel21: TppLabel;
    ppDBText29: TppDBText;
    ppLabel25: TppLabel;
    ppLabel42: TppLabel;
    ppLabel31: TppLabel;
    MaidenSheetOrder: TppDBText;
    TurfSheetOrder: TppDBText;
    ppLabel17: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText10: TppDBText;
    ppLabel51: TppLabel;
    ppDBText28: TppDBText;
    ppLine17: TppLine;
    ppLine32: TppLine;
    ppLabel52: TppLabel;
    ppDBText40: TppDBText;
    ppDBText42: TppDBText;
    ppLabel54: TppLabel;
    ppLabel58: TppLabel;
    ppLine34: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppHeaderBand2: TppHeaderBand;
    aDetailBand: TppDetailBand;
    ppLine5: TppLine;
    ppLine14: TppLine;
    ppLine7: TppLine;
    ppLine6: TppLine;
    ppLine2: TppLine;
    ProgramNbr: TppDBText;
    Trainer: TppDBText;
    Jockey: TppDBText;
    Med: TppDBText;
    Pace: TppDBText;
    TotalTrnWinPct: TppDBText;
    TotalTrnJkyWinPct: TppDBText;
    TotalJky30WinPct: TppDBText;
    Sex: TppDBText;
    Age: TppDBText;
    ppDBText13: TppDBText;
    BredIn: TppDBText;
    TotalTrnDebutWinPct: TppDBText;
    MidPace: TppDBText;
    TotalJkyWinPct: TppDBText;
    ppLine10: TppLine;
    TotalTrnTurfWinPct: TppDBText;
    TotalTrnAftClmWinPct: TppDBText;
    TotalTrnDebutTwoWinPct: TppDBText;
    SurfaceChange: TppVariable;
    DistanceChange: TppVariable;
    lblErlPos: TppLabel;
    lblMidPos: TppLabel;
    LastComment2: TppDBText;
    TotalTrn2yoWinPct: TppDBText;
    ppLine18: TppLine;
    Equip: TppDBText;
    Weight: TppDBText;
    TotalTrnFirstJuiceWinPct: TppDBText;
    TotalTrnBlinkersOnWinPct: TppDBText;
    TotalTrnBlinkersOffWinPct: TppDBText;
    TurfIndicator: TppDBText;
    DebutIndicator: TppDBText;
    RouteIndicator: TppDBText;
    ppLine15: TppLine;
    TurfRating: TppDBText;
    Last2Comment2: TppDBText;
    ppLine4: TppLine;
    layoffline1: TppLine;
    ppLine12: TppLine;
    LastRaceDesc: TppDBText;
    Last2RaceDesc: TppDBText;
    TurfWins: TppDBText;
    MudStarts: TppDBText;
    MudWins: TppDBText;
    TrkStarts: TppDBText;
    ppDBText15: TppDBText;
    lblTrack: TppLabel;
    ppLabel67: TppLabel;
    ppLine16: TppLine;
    DaysLast: TppDBText;
    lblOnTurf: TppLabel;
    Power: TppDBText;
    ppDBText5: TppDBText;
    SireName: TppDBText;
    ML: TppDBText;
    lblRoute: TppLabel;
    RouteStarts: TppDBText;
    RouteWins: TppDBText;
    QSP1stCallRunStyle: TppDBText;
    lblSprint: TppLabel;
    SprintStarts: TppDBText;
    SprintWins: TppDBText;
    lblLife: TppLabel;
    LifeStarts: TppDBText;
    LifeWins: TppDBText;
    HorseName: TppDBText;
    ppLine13: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    TotalTrnOwnWinPct: TppDBText;
    TurfStarts: TppDBText;
    ppDBText41: TppDBText;
    OwnerName: TppDBText;
    ppLine1: TppLine;
    PowerAdvantage: TppDBText;
    ppLine3: TppLine;
    ppDBText12: TppDBText;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine20: TppLine;
    LatePaceAdvantageWinPct: TppDBText;
    ppLine24: TppLine;
    MiddlePaceAdvantageWinPct: TppDBText;
    EarlyPaceAdvantageWinPct: TppDBText;
    TotalTrn46To120WinPct: TppDBText;
    ppLabel22: TppLabel;
    PostPos: TppDBText;
    TotalTrn30WinPct: TppDBText;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ClassRating: TppDBText;
    DistanceRating: TppDBText;
    MudRating: TppDBText;
    ppLine30: TppLine;
    ppLine31: TppLine;
    TodaysWagerWinPct: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText9: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText20: TppDBText;
    ppDBText24: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryWagerTypeBand: TppSummaryBand;
    dbWagerType: TppDBMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    ppLabel4: TppLabel;
    ppDBText26: TppDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure btnCreatePdfClick(Sender: TObject);
      procedure FormActivate(Sender: TObject);
      procedure timCloseFormCheckTimer(Sender: TObject);
      procedure plRacesReportNext(Sender: TObject);
      procedure plEntriesNext(Sender: TObject);
      procedure plEntriesRecordPositionChange(Sender: TObject);
      procedure plEntriesTraversal(Sender: TObject);
      procedure dbHospitalReportBeforeConnect(Sender: TObject);
    procedure plRacesReportTraversal(Sender: TObject);
    procedure dsEntriesDataChange(Sender: TObject; Field: TField);
   private
      { Private declarations }
      bCreateReportsActive: boolean;
   public
      { Public declarations }
   end;

var
   HospitalReportForm: THospitalReportForm;

implementation

uses UnitCommonCode, StrMan;

{$R *.DFM}

//******************* TTipSheetReportForm.FormCreate *************************

procedure THospitalReportForm.FormCreate(Sender: TObject);
begin

   hLog.LogFileName := LOG_PATH + LOG_FILENAME;
   with dbHospitalReport do begin
      Close;
      Directory := DATA_PATH;
      Open;
   end;

end;

//******************* TTipSheetReportForm.FormDestroy *************************

procedure THospitalReportForm.FormDestroy(Sender: TObject);
begin

   hLog.LogFileName := LOG_PATH + LOG_FILENAME;
   tblRacesLoop.Active := False;
   tblRacesMaster.Active := False;

   tblEntries.Active := False;
   //   tblATrainerList.Active := False;

   with dbHospitalReport do begin
      Close;
   end;

end;

//******************* TTipSheetReportForm.btnCreatePdfClick *************************

procedure THospitalReportForm.btnCreatePdfClick(Sender: TObject);
var
   sTrkCode: string;
   sPrevTrkCode: string;
   wYear: Word;
   wMonth: Word;
   wDay: Word;
   sFileName: string;
   iAttributes: integer;
   tsFile: TSearchRec;

begin                      


   tblRacesLoop.Active := False;
   tblRacesMaster.Active := False;
   tblEntries.Active := False;

   prgBar.Position := 0;
   pnlPrgBar.Visible := False;
   staBar.SimpleText := '';
   bCreateReportsActive := False;

   try

      sPrevTrkCode := '';
      tblRacesLoop.Active := True;

      tblRacesMaster.Active := False;
      tblEntries.Active := False;

      //      tblATrainerList.Active := True;

      prgBar.Max := tblRacesLoop.RecordCount;
      prgBar.Position := 0;
      pnlPrgBar.Visible := True;

      tblRacesLoop.First();
      while not tblRacesLoop.Eof do begin
         prgBar.Position := prgBar.Position + 1;
         Application.ProcessMessages();
         sTrkCode := tblRacesLoop.FieldByName('TrkCode').AsString;
         if sPrevTrkCode <> tblRacesLoop.FieldByName('TrkCode').AsString then begin
            sPrevTrkCode := tblRacesLoop.FieldByName('TrkCode').AsString;

            tblRacesMaster.Active := True;
            tblRacesMaster.Filtered := False;
            tblRacesMaster.Filter := 'TrkCode=''' + tblRacesLoop.FieldByName('TrkCode').AsString + '''';
            tblRacesMaster.Filtered := True;

            DecodeDate(tblRacesLoop.FieldByName('RaceDate').AsDateTime, wYear, wMonth, wDay);
            sFileName := tblRacesLoop.FieldByName('TrkCode').AsString + sm.Str(wMonth, 2) + sm.Str(wDay, 2) + '.pdf';

            with ppHospitalReport do begin
               AllowPrintToFile := True;
               ShowPrintDialog := False;
               ShowCancelDialog := False;
               DeviceType := 'PDFFile';
               TextFileName := PDF_HOSPITAL_REPORT_PATH + sFileName;
               staBar.SimpleText := 'Processing ' + TextFileName;
               Application.ProcessMessages;
               ppHospitalReport.Print;
            end;

            iAttributes := faAnyFile;
            if (FindFirst(ppHospitalReport.TextFileName, iAttributes, tsFile) = 0) then begin
               if (tsFile.Size < MIN_REPORT_FILE_SIZE) then begin
                  DeleteFile(ppHospitalReport.TextFileName);
                  Application.ProcessMessages();
               end;
            end;
            FindClose(tsFile);

         end;
         tblRacesLoop.Next();
      end;

   except
      tblRacesLoop.Active := False;
      tblRacesMaster.Active := False;
      tblEntries.Active := False;
      //      tblATrainerList.Active := False;

      prgBar.Position := 0;
      pnlPrgBar.Visible := False;
      staBar.SimpleText := '';
      bCreateReportsActive := False;
   end;

   tblRacesLoop.Active := False;
   tblRacesMaster.Active := False;
   tblEntries.Active := False;

   prgBar.Position := 0;
   pnlPrgBar.Visible := False;
   staBar.SimpleText := '';
   bCreateReportsActive := False;



end;

procedure THospitalReportForm.FormActivate(Sender: TObject);
begin

   bCreateReportsActive := True;
   btnCreatePdfClick(Sender);

end;

procedure THospitalReportForm.timCloseFormCheckTimer(Sender: TObject);
begin

   if not bCreateReportsActive then begin
      Close;
   end;

end;

procedure THospitalReportForm.plRacesReportNext(Sender: TObject);
begin
   Application.ProcessMessages;
end;

procedure THospitalReportForm.plEntriesNext(Sender: TObject);
begin
   Application.ProcessMessages;
end;

procedure THospitalReportForm.plEntriesRecordPositionChange(Sender: TObject);
begin
   Application.ProcessMessages;
end;

procedure THospitalReportForm.plEntriesTraversal(Sender: TObject);
begin
   Application.ProcessMessages;
end;

procedure THospitalReportForm.dbHospitalReportBeforeConnect(
   Sender: TObject);
begin
   dbHospitalReport.Directory := DATA_PATH;

end;

procedure THospitalReportForm.plRacesReportTraversal(Sender: TObject);
begin
         Application.ProcessMessages();
         Application.ProcessMessages();

end;

procedure THospitalReportForm.dsEntriesDataChange(Sender: TObject;
  Field: TField);
begin
         Application.ProcessMessages();

end;

end.

