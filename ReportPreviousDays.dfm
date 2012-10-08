object PreviousDaysReportForm: TPreviousDaysReportForm
  Left = 55
  Top = 166
  Width = 568
  Height = 356
  Caption = 'Previous Day Results Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrgBar: TPanel
    Left = 5
    Top = 14
    Width = 549
    Height = 41
    BorderStyle = bsSingle
    Caption = 'pnlPrgBar'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Visible = False
    object prgBar: TProgressBar
      Left = 10
      Top = 11
      Width = 527
      Height = 16
      TabOrder = 0
    end
  end
  object staBar: TStatusBar
    Left = 0
    Top = 295
    Width = 560
    Height = 27
    Panels = <>
    SimplePanel = True
  end
  object btnCreatePdf: TButton
    Left = 5
    Top = 61
    Width = 549
    Height = 41
    Caption = 'Create PDF Reports'
    TabOrder = 2
    OnClick = btnCreatePdfClick
  end
  object dbPrevDayReport: TDBISAMDatabase
    EngineVersion = '4.21 Build 10'
    Connected = True
    DatabaseName = 'dbPrevDayReport'
    Directory = 'c:\RatingsData31'
    KeepTablesOpen = False
    SessionName = 'Default'
    Left = 424
    Top = 120
  end
  object tblPrevDayHH: TDBISAMTable
    AutoCalcFields = False
    AutoDisplayLabels = False
    CopyOnAppend = False
    Filter = 'FinalWinPctRank=1'
    Filtered = True
    OnNewRecord = tblPrevDayHHNewRecord
    DatabaseName = 'dbPrevDayReport'
    SessionName = 'Default'
    EngineVersion = '4.21 Build 10'
    ReadOnly = True
    TableName = 'PrevDayHH'
    Left = 150
    Top = 112
  end
  object dsPrevDayHH: TDataSource
    DataSet = tblPrevDayHH
    Left = 158
    Top = 160
  end
  object plPrevDayHH: TppDBPipeline
    DataSource = dsPrevDayHH
    CloseDataSource = True
    UserName = 'plPrevDayHH'
    OnMasterRecordPositionChange = plPrevDayHHMasterRecordPositionChange
    OnTraversal = plPrevDayHHTraversal
    Left = 150
    Top = 218
  end
  object ppPrevDayReport: TppReport
    AutoStop = False
    DataPipeline = plPrevDayHH
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\ratings31\PrevDay.rtm'
    Template.Format = ftASCII
    Units = utPrinterPixels
    AllowPrintToFile = True
    CachePages = True
    DeviceType = 'Printer'
    ModalCancelDialog = False
    ModalPreview = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 264
    Top = 112
    Version = '7.04'
    mmColumnWidth = 203200
    DataPipelineName = 'plPrevDayHH'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 13494
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'lblTrkCode'
        Caption = 'Trk'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 2953
        mmTop = 10319
        mmWidth = 3133
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'lblRaceNbr'
        Caption = 'R#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 8837
        mmTop = 10319
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'lblProgNbr'
        Caption = 'P#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 15801
        mmTop = 10319
        mmWidth = 2455
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'lblHorse'
        Caption = 'Horse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 20785
        mmTop = 10319
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'lblML'
        Caption = 'M/L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 43096
        mmTop = 10319
        mmWidth = 3471
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'lbl5Choices'
        Caption = 'Top Choices'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 109009
        mmTop = 10054
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'lblFinPos'
        Caption = 'Fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 49382
        mmTop = 10319
        mmWidth = 3006
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'lblOdds'
        Caption = 'Odds'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 56262
        mmTop = 10319
        mmWidth = 5122
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'lblFinishNbrs'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 135181
        mmTop = 10054
        mmWidth = 6900
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'lblExa'
        Caption = 'Exacta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 176742
        mmTop = 10319
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'lblQui'
        Caption = 'Quinella'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 188119
        mmTop = 10319
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'lblPk3'
        Caption = 'Pick 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 236538
        mmTop = 10319
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'lblDD'
        Caption = 'Double'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 207698
        mmTop = 10319
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'lblPk4'
        Caption = 'Pick 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 259621
        mmTop = 10319
        mmWidth = 5757
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'lblTri'
        Caption = 'Trifecta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 163513
        mmTop = 10319
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'lblSfc'
        Caption = 'Superfecta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 146050
        mmTop = 10319
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'lblWinNbrs'
        AutoSize = False
        Caption = 'Winner'#39's                        Win /  Place /  Show'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2836
        mmLeft = 63236
        mmTop = 10054
        mmWidth = 40746
        BandType = 0
      end
      object lblReportTitle: TppLabel
        UserName = 'lblReportTitle'
        AutoSize = False
        Caption = 'Hospital Form Results'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5673
        mmLeft = 0
        mmTop = 0
        mmWidth = 147109
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'sysPage'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5673
        mmLeft = 226219
        mmTop = 0
        mmWidth = 13081
        BandType = 0
      end
      object varStartDate: TppLabel
        UserName = 'lblStartDate'
        Caption = 'lblStartDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 5673
        mmLeft = 149754
        mmTop = 0
        mmWidth = 22775
        BandType = 0
      end
      object varEndDate: TppLabel
        UserName = 'lblEndDate'
        Caption = 'EndDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 5673
        mmLeft = 190236
        mmTop = 0
        mmWidth = 16468
        BandType = 0
      end
    end
    object DetailBand: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 12171
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object dbRaceNbr: TppDBText
        UserName = 'RaceNbr'
        DataField = 'RaceNbr'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 7144
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object dbHorseName: TppDBText
        UserName = 'HorseName'
        DataField = 'HorseName'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 19050
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object dbTrkCode: TppDBText
        UserName = 'TrkCode'
        DataField = 'TrkCode'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 265
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object dbProgramNbr: TppDBText
        UserName = 'ProgramNbr'
        DataField = 'ProgramNbr'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 14023
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object dbFinishPos: TppDBText
        UserName = 'FinishPos'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'FinishPos'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 3260
        mmLeft = 41170
        mmTop = 0
        mmWidth = 11218
        BandType = 4
      end
      object dbOdds: TppDBText
        UserName = 'Odds'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Odds'
        DataPipeline = plPrevDayHH
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 56262
        mmTop = 0
        mmWidth = 5122
        BandType = 4
      end
      object MorningLineDesc: TppDBText
        UserName = 'MorningLineDesc'
        AutoSize = True
        DataField = 'MorningLineDesc'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2498
        mmLeft = 32936
        mmTop = 0
        mmWidth = 13631
        BandType = 4
      end
      object dbExactaPayout: TppDBText
        UserName = 'ExactaPayout'
        BlankWhenZero = True
        DataField = 'ExactaPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '####0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2910
        mmLeft = 172773
        mmTop = 3440
        mmWidth = 10319
        BandType = 4
      end
      object FinishNbrs: TppDBText
        UserName = 'FinishNbrs'
        DataField = 'WagerSheetOrder'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 3440
        mmLeft = 123561
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object dbTrifectaPayout: TppDBText
        UserName = 'TrifectaPayout'
        BlankWhenZero = True
        DataField = 'TrifectaPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '######0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 159544
        mmTop = 3440
        mmWidth = 11113
        BandType = 4
      end
      object dbQuinellaPayout: TppDBText
        UserName = 'QuinellaPayout'
        BlankWhenZero = True
        DataField = 'QuinellaPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '####0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2667
        mmLeft = 184415
        mmTop = 3440
        mmWidth = 11642
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        ParentHeight = True
        Position = lpLeft
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 121709
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 196321
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        ParentHeight = True
        Position = lpRight
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 142875
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 157692
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 171980
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 183621
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 12435
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 47096
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object dbDailyDoublePayout: TppDBText
        UserName = 'DailyDoublePayoutFirstRace'
        BlankWhenZero = True
        DataField = 'DailyDoublePayoutFirstRace'
        DataPipeline = plPrevDayRH
        DisplayFormat = '######0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 197380
        mmTop = 3440
        mmWidth = 17198
        BandType = 4
      end
      object dbPick4Payout: TppDBText
        UserName = 'Pick4Payout'
        BlankWhenZero = True
        DataField = 'Pick4PayoutFirstRace'
        DataPipeline = plPrevDayRH
        DisplayFormat = '######0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2667
        mmLeft = 253736
        mmTop = 3440
        mmWidth = 12171
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 243417
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object dbSuperfectaPayout: TppDBText
        UserName = 'SuperfectaPayout'
        BlankWhenZero = True
        DataField = 'SuperfectaPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '######0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2667
        mmLeft = 143934
        mmTop = 3440
        mmWidth = 12435
        BandType = 4
      end
      object dbPick4Wager: TppDBText
        UserName = 'Pick4Wager'
        BlankWhenZero = True
        DataField = 'Pick4WagerFirstRace'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2667
        mmLeft = 244475
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object dbPick3Wager: TppDBText
        UserName = 'Pick3Wager'
        BlankWhenZero = True
        DataField = 'Pick3WagerFirstRace'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 219340
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object dbDailyDoubleWager: TppDBText
        UserName = 'DailyDoubleWager'
        BlankWhenZero = True
        DataField = 'DailyDoubleWagerFirstRace'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 197380
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object dbQuinellaWager: TppDBText
        UserName = 'QuinellaWager'
        BlankWhenZero = True
        DataField = 'QuinellaWager'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2667
        mmLeft = 184680
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object dbExactaWager: TppDBText
        UserName = 'ExactaWager'
        BlankWhenZero = True
        DataField = 'ExactaWager'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 172509
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object dbTrifectaWager: TppDBText
        UserName = 'TrifectaWager'
        BlankWhenZero = True
        DataField = 'TrifectaWager'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 158750
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object dbSuperfectaWager: TppDBText
        UserName = 'SuperfectaWager'
        BlankWhenZero = True
        DataField = 'SuperfectaWager'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2625
        mmLeft = 144198
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 104775
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object dbWinPayout: TppDBText
        UserName = 'WinPayout'
        BlankWhenZero = True
        DataField = 'WinPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 3175
        mmLeft = 81227
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object dbSheetOrder: TppDBText
        UserName = 'SheetOrder'
        DataField = 'WagerFinalOrder'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 3175
        mmLeft = 105834
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 61648
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object dbWinNbrs: TppDBText
        UserName = 'WinNbrs'
        BlankWhenZero = True
        DataField = 'WinNbrs'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2836
        mmLeft = 62442
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object dbWinPlcPayout: TppDBText
        UserName = 'WinPlcPayout'
        BlankWhenZero = True
        DataField = 'WinPlcPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 3175
        mmLeft = 89165
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object dbWinShoPayout: TppDBText
        UserName = 'WinShoPayout'
        BlankWhenZero = True
        DataField = 'WinShoPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 3175
        mmLeft = 97102
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object dbPick3Payout: TppDBText
        UserName = 'Pick3Payout'
        BlankWhenZero = True
        DataField = 'Pick3PayoutFirstRace'
        DataPipeline = plPrevDayRH
        DisplayFormat = '######0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 230188
        mmTop = 3440
        mmWidth = 12171
        BandType = 4
      end
      object dbDailyDoubleNbrs: TppDBText
        UserName = 'DailyDoubleNbrs'
        BlankWhenZero = True
        DataField = 'DailyDoubleNbrsFirstRace'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 197380
        mmTop = 7408
        mmWidth = 17198
        BandType = 4
      end
      object dbPick3Nbrs: TppDBText
        UserName = 'Pick3Nbrs'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Pick3NbrsFirstRace'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 224579
        mmTop = 7408
        mmWidth = 17780
        BandType = 4
      end
      object dbPick4Nbrs: TppDBText
        UserName = 'Pick4Nbrs'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Pick4NbrsFirstRace'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2498
        mmLeft = 250413
        mmTop = 7408
        mmWidth = 15494
        BandType = 4
      end
      object dbPlcNbrs: TppDBText
        UserName = 'PlcNbrs'
        BlankWhenZero = True
        DataField = 'PlcNbrs'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2836
        mmLeft = 62442
        mmTop = 3704
        mmWidth = 17992
        BandType = 4
      end
      object dbShoNbrs: TppDBText
        UserName = 'ShoNbrs'
        BlankWhenZero = True
        DataField = 'ShoNbrs'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2836
        mmLeft = 62442
        mmTop = 7408
        mmWidth = 17992
        BandType = 4
      end
      object dbPlcPayout: TppDBText
        UserName = 'PlcPayout'
        BlankWhenZero = True
        DataField = 'PlcPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 3175
        mmLeft = 89165
        mmTop = 3704
        mmWidth = 6879
        BandType = 4
      end
      object dbPlcShoPayout: TppDBText
        UserName = 'PlcShoPayout'
        BlankWhenZero = True
        DataField = 'PlcShoPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 3175
        mmLeft = 97102
        mmTop = 3704
        mmWidth = 6879
        BandType = 4
      end
      object dbShoPayout: TppDBText
        UserName = 'ShoPayout'
        BlankWhenZero = True
        DataField = 'ShoPayout'
        DataPipeline = plPrevDayRH
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 3175
        mmLeft = 97102
        mmTop = 7408
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'TrkCode1'
        DataField = 'RaceDate'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2455
        mmLeft = 265
        mmTop = 3175
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'TrkCode2'
        DataField = 'RaceType'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 529
        mmTop = 6085
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'RaceNbr1'
        DataField = 'DaysLast'
        DataPipeline = plPrevDayHH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 7673
        mmTop = 6085
        mmWidth = 4233
        BandType = 4
      end
      object Pace: TppDBText
        UserName = 'ErlPace'
        ShiftWithParent = True
        DataField = 'EarlyPace'
        DataPipeline = plPrevDayHH
        DisplayFormat = '##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 17992
        mmTop = 3175
        mmWidth = 4498
        BandType = 4
      end
      object lblErlPos: TppLabel
        UserName = 'lblErlPos'
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2836
        mmLeft = 19971
        mmTop = 6879
        mmWidth = 804
        BandType = 4
      end
      object MidPace: TppDBText
        UserName = 'MidPace'
        ShiftWithParent = True
        DataField = 'MiddlePace'
        DataPipeline = plPrevDayHH
        DisplayFormat = '##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2836
        mmLeft = 23548
        mmTop = 3175
        mmWidth = 4498
        BandType = 4
      end
      object lblMidPos: TppLabel
        UserName = 'lblMidPos'
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2836
        mmLeft = 25400
        mmTop = 6879
        mmWidth = 1323
        BandType = 4
      end
      object lblLatePos: TppLabel
        UserName = 'lblLatePos'
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2836
        mmLeft = 31744
        mmTop = 6879
        mmWidth = 804
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'LatePace'
        ShiftWithParent = True
        DataField = 'LatePace'
        DataPipeline = plPrevDayHH
        DisplayFormat = '##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayHH'
        mmHeight = 2879
        mmLeft = 29369
        mmTop = 3175
        mmWidth = 4498
        BandType = 4
      end
      object SuperfectaNbrs: TppDBText
        UserName = 'SuperfectaNbrs'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'SuperfectaNbrs'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 142484
        mmTop = 7408
        mmWidth = 13885
        BandType = 4
      end
      object TrifectaNbrs: TppDBText
        UserName = 'TrifectaNbrs'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'TrifectaNbrs'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 159734
        mmTop = 7408
        mmWidth = 10922
        BandType = 4
      end
      object ExactaNbrs: TppDBText
        UserName = 'ExactaNbrs'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'ExactaNbrs'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 172720
        mmTop = 7408
        mmWidth = 10372
        BandType = 4
      end
      object QuinellaNbrs: TppDBText
        UserName = 'QuinellaNbrs'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'QuinellaNbrs'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2879
        mmLeft = 184458
        mmTop = 7408
        mmWidth = 11599
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line101'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 143934
        mmTop = 6615
        mmWidth = 123031
        BandType = 4
      end
      object EstTimeOfRace: TppDBText
        UserName = 'EstTimeOfRace'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'EstTimeOfRace'
        DataPipeline = plPrevDayRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrevDayRH'
        mmHeight = 2455
        mmLeft = 0
        mmTop = 9737
        mmWidth = 12869
        BandType = 4
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060A54726150726F6772616D094368696C645479706502150E497346756E63
        74696F6E54797065090B50726F6772616D4E616D65060C436F6D70757465504C
        5063740B50726F6772616D54797065070A747446756E6374696F6E06536F7572
        6365068766756E6374696F6E20436F6D70757465504C506374202866576F6E3A
        646F75626C653B66576167657265643A646F75626C65293A646F75626C653B0D
        0A626567696E0D0A20200D0A202020526573756C74203A3D20282866576F6E20
        2D20665761676572656429202F20665761676572656429202A203130303B0D0A
        2020200D0A656E643B0D0A0001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D65061346696E6973684E6272734F6E476574546578740B
        50726F6772616D54797065070B747450726F63656475726506536F757263650C
        CD01000070726F6365647572652046696E6973684E6272734F6E476574546578
        742876617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20
        2054657874203A3D2027273B0D0A20200D0A20206966205472696D28706C5072
        657644617952485B27537570657266656374614E627273275D29203C3E202727
        207468656E20626567696E0D0A202020202054657874203A3D2020706C507265
        7644617952485B27537570657266656374614E627273275D3B0D0A2020656E64
        3B0D0A2020200D0A20206966205472696D285465787429203D20272720746865
        6E20626567696E0D0A20200954657874203A3D2020706C507265764461795248
        5B2754726966656374614E627273275D3B0D0A2020656E643B0D0A20200D0A20
        206966205472696D285465787429203D202727207468656E20626567696E0D0A
        20200954657874203A3D2020706C5072657644617952485B274578616374614E
        627273275D3B0D0A2020656E643B0D0A0D0A20206966205472696D2854657874
        29203D202727207468656E20626567696E0D0A20200954657874203A3D202070
        6C5072657644617952485B275175696E656C6C614E627273275D3B0D0A202065
        6E643B0D0A20200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506
        0A46696E6973684E627273094576656E744E616D6506094F6E47657454657874
        074576656E74494402350001060F5472614576656E7448616E646C65720B5072
        6F6772616D4E616D6506135069636B3457616765724F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F7572636506F1
        70726F636564757265205069636B3457616765724F6E47657454657874287661
        7220546578743A20537472696E67293B0D0A626567696E0D0A0D0A2020696620
        706C5072657644617952485B275069636B345761676572466972737452616365
        275D203D2031207468656E20626567696E0D0A2020202054657874203A3D2027
        2431273B0D0A2020656E643B20200D0A2020696620706C507265764461795248
        5B275069636B345761676572466972737452616365275D203D2032207468656E
        20626567696E0D0A2020202054657874203A3D20272432273B0D0A2020656E64
        3B20200D0A20200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506
        0A5069636B345761676572094576656E744E616D6506094F6E47657454657874
        074576656E74494402350001060F5472614576656E7448616E646C65720B5072
        6F6772616D4E616D6506135069636B3357616765724F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F7572636506EF
        70726F636564757265205069636B3357616765724F6E47657454657874287661
        7220546578743A20537472696E67293B0D0A626567696E0D0A0D0A2020696620
        706C5072657644617952485B275069636B335761676572466972737452616365
        275D203D2031207468656E20626567696E0D0A2020202054657874203A3D2027
        2431273B0D0A2020656E643B20200D0A2020696620706C507265764461795248
        5B275069636B335761676572466972737452616365275D203D2032207468656E
        20626567696E0D0A2020202054657874203A3D20272432273B0D0A2020656E64
        3B20200D0A20200D0A656E643B0D0A0D436F6D706F6E656E744E616D65060A50
        69636B335761676572094576656E744E616D6506094F6E476574546578740745
        76656E74494402350001060F5472614576656E7448616E646C65720B50726F67
        72616D4E616D6506194461696C79446F75626C6557616765724F6E4765745465
        78740B50726F6772616D54797065070B747450726F63656475726506536F7572
        63650C0101000070726F636564757265204461696C79446F75626C6557616765
        724F6E476574546578742876617220546578743A20537472696E67293B0D0A62
        6567696E0D0A0D0A2020696620706C5072657644617952485B274461696C7944
        6F75626C655761676572466972737452616365275D203D2031207468656E2062
        6567696E0D0A2020202054657874203A3D20272431273B0D0A2020656E643B20
        200D0A2020696620706C5072657644617952485B274461696C79446F75626C65
        5761676572466972737452616365275D203D2032207468656E20626567696E0D
        0A2020202054657874203A3D20272432273B0D0A2020656E643B20200D0A2020
        0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506104461696C79446F75
        626C655761676572094576656E744E616D6506094F6E47657454657874074576
        656E74494402350001060F5472614576656E7448616E646C65720B50726F6772
        616D4E616D6506165175696E656C6C6157616765724F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F7572636506E6
        70726F636564757265205175696E656C6C6157616765724F6E47657454657874
        2876617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A2020
        696620706C5072657644617952485B275175696E656C6C615761676572275D20
        3D2031207468656E20626567696E0D0A2020202054657874203A3D2027243127
        3B0D0A2020656E643B20200D0A2020696620706C5072657644617952485B2751
        75696E656C6C615761676572275D203D2032207468656E20626567696E0D0A20
        20202054657874203A3D20272432273B0D0A2020656E643B20200D0A20200D0A
        656E643B0D0A0D436F6D706F6E656E744E616D65060D5175696E656C6C615761
        676572094576656E744E616D6506094F6E47657454657874074576656E744944
        02350001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        65061445786163746157616765724F6E476574546578740B50726F6772616D54
        797065070B747450726F63656475726506536F757263650C1001000070726F63
        65647572652045786163746157616765724F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200D0A2020696620706C5072657644617952485B27457861637461
        5761676572275D203D2031207468656E20626567696E0D0A2020202054657874
        203A3D20272431273B0D0A2020656E643B20200D0A2020696620706C50726576
        44617952485B274578616374615761676572275D203D2032207468656E206265
        67696E0D0A2020202054657874203A3D20272432273B0D0A2020656E643B2020
        0D0A20200D0A656E643B0D0A0D436F6D706F6E656E744E616D65060B45786163
        74615761676572094576656E744E616D6506094F6E4765745465787407457665
        6E74494402350001060F5472614576656E7448616E646C65720B50726F677261
        6D4E616D650616547269666563746157616765724F6E476574546578740B5072
        6F6772616D54797065070B747450726F63656475726506536F7572636506E670
        726F63656475726520547269666563746157616765724F6E4765745465787428
        76617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A202069
        6620706C5072657644617952485B2754726966656374615761676572275D203D
        2031207468656E20626567696E0D0A2020202054657874203A3D20272431273B
        0D0A2020656E643B20200D0A2020696620706C5072657644617952485B275472
        6966656374615761676572275D203D2032207468656E20626567696E0D0A2020
        202054657874203A3D20272432273B0D0A2020656E643B20200D0A20200D0A65
        6E643B0D0A0D436F6D706F6E656E744E616D65060D5472696665637461576167
        6572094576656E744E616D6506094F6E47657454657874074576656E74494402
        350001060F5472614576656E7448616E646C65720B50726F6772616D4E616D65
        06185375706572666563746157616765724F6E476574546578740B50726F6772
        616D54797065070B747450726F63656475726506536F7572636506EC70726F63
        6564757265205375706572666563746157616765724F6E476574546578742876
        617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20206966
        20706C5072657644617952485B27537570657266656374615761676572275D20
        3D2031207468656E20626567696E0D0A2020202054657874203A3D2027243127
        3B0D0A2020656E643B20200D0A2020696620706C5072657644617952485B2753
        7570657266656374615761676572275D203D2032207468656E20626567696E0D
        0A2020202054657874203A3D20272432273B0D0A2020656E643B20200D0A2020
        0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060F5375706572666563
        74615761676572094576656E744E616D6506094F6E4765745465787407457665
        6E74494402350001060F5472614576656E7448616E646C65720B50726F677261
        6D4E616D65061046696E697368506F734F6E5072696E740B50726F6772616D54
        797065070B747450726F63656475726506536F7572636506BF70726F63656475
        72652046696E697368506F734F6E5072696E743B0D0A626567696E0D0A0D0A20
        20696620706C5072657644617948485B2746696E697368506F73275D203D2031
        207468656E20626567696E0D0A202020202046696E697368506F732E466F6E74
        2E426F6C64203A3D20547275653B0D0A2020656E6420656C736520626567696E
        0D0A202020202046696E697368506F732E466F6E742E426F6C64203A3D204661
        6C73653B0D0A2020656E643B0D0A20200D0A656E643B0D0A0D436F6D706F6E65
        6E744E616D65060946696E697368506F73094576656E744E616D6506074F6E50
        72696E74074576656E74494402200001060F5472614576656E7448616E646C65
        720B50726F6772616D4E616D65060B4F6464734F6E5072696E740B50726F6772
        616D54797065070B747450726F63656475726506536F7572636506AB70726F63
        6564757265204F6464734F6E5072696E743B0D0A626567696E0D0A2069662070
        6C5072657644617948485B2746696E697368506F73275D203D2031207468656E
        20626567696E0D0A20202020204F6464732E466F6E742E426F6C64203A3D2054
        7275653B0D0A2020656E6420656C736520626567696E0D0A20202020204F6464
        732E466F6E742E426F6C64203A3D2046616C73653B0D0A2020656E643B0D0A0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D6506044F646473094576656E
        744E616D6506074F6E5072696E74074576656E74494402200001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65060E54726B436F6465
        4F6E5072696E740B50726F6772616D54797065070B747450726F636564757265
        06536F7572636506B770726F6365647572652054726B436F64654F6E5072696E
        743B0D0A626567696E0D0A0D0A2020696620706C5072657644617948485B2746
        696E697368506F73275D203D2031207468656E20626567696E0D0A2020202020
        54726B436F64652E466F6E742E426F6C64203A3D20547275653B0D0A2020656E
        6420656C736520626567696E0D0A202020202054726B436F64652E466F6E742E
        426F6C64203A3D2046616C73653B0D0A2020656E643B0D0A0D0A656E643B0D0A
        0D436F6D706F6E656E744E616D65060754726B436F6465094576656E744E616D
        6506074F6E5072696E74074576656E74494402200001060F5472614576656E74
        48616E646C65720B50726F6772616D4E616D65061150726F6772616D4E62724F
        6E5072696E740B50726F6772616D54797065070B747450726F63656475726506
        536F7572636506BC70726F6365647572652050726F6772616D4E62724F6E5072
        696E743B0D0A626567696E0D0A696620706C5072657644617948485B2746696E
        697368506F73275D203D2031207468656E20626567696E0D0A20202020205072
        6F6772616D4E62722E466F6E742E426F6C64203A3D20547275653B0D0A202065
        6E6420656C736520626567696E0D0A202020202050726F6772616D4E62722E46
        6F6E742E426F6C64203A3D2046616C73653B0D0A2020656E643B0D0A0D0A656E
        643B0D0A0D436F6D706F6E656E744E616D65060A50726F6772616D4E62720945
        76656E744E616D6506074F6E5072696E74074576656E74494402200001060F54
        72614576656E7448616E646C65720B50726F6772616D4E616D650610486F7273
        654E616D654F6E5072696E740B50726F6772616D54797065070B747450726F63
        656475726506536F7572636506BD70726F63656475726520486F7273654E616D
        654F6E5072696E743B0D0A626567696E0D0A0D0A2020696620706C5072657644
        617948485B2746696E697368506F73275D203D2031207468656E20626567696E
        0D0A2020202020486F7273654E616D652E466F6E742E426F6C64203A3D205472
        75653B0D0A2020656E6420656C736520626567696E0D0A2020202020486F7273
        654E616D652E466F6E742E426F6C64203A3D2046616C73653B0D0A2020656E64
        3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650609486F727365
        4E616D65094576656E744E616D6506074F6E5072696E74074576656E74494402
        200001060F5472614576656E7448616E646C65720B50726F6772616D4E616D65
        060E526163654E62724F6E5072696E740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B770726F6365647572652052616365
        4E62724F6E5072696E743B0D0A626567696E0D0A0D0A2020696620706C507265
        7644617948485B2746696E697368506F73275D203D2031207468656E20626567
        696E0D0A2020202020526163654E62722E466F6E742E426F6C64203A3D205472
        75653B0D0A2020656E6420656C736520626567696E0D0A202020202052616365
        4E62722E466F6E742E426F6C64203A3D2046616C73653B0D0A2020656E643B0D
        0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650607526163654E6272
        094576656E744E616D6506074F6E5072696E74074576656E7449440220000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506164D6F
        726E696E674C696E65446573634F6E5072696E740B50726F6772616D54797065
        070B747450726F63656475726506536F7572636506D670726F63656475726520
        4D6F726E696E674C696E65446573634F6E5072696E743B0D0A626567696E0D0A
        2020696620706C5072657644617948485B274D6F726E696E674C696E65546F31
        52616E6B275D203D2031207468656E20626567696E0D0A20202020204D6F726E
        696E674C696E65446573632E466F6E742E426F6C64203A3D20547275653B0D0A
        2020656E6420656C736520626567696E0D0A20202020204D6F726E696E674C69
        6E65446573632E466F6E742E426F6C64203A3D2046616C73653B0D0A2020656E
        643B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060F4D6F726E
        696E674C696E6544657363094576656E744E616D6506074F6E5072696E740745
        76656E74494402200001060F5472614576656E7448616E646C65720B50726F67
        72616D4E616D65061146696E6973684E6272734F6E5072696E740B50726F6772
        616D54797065070B747450726F63656475726506536F7572636506B170726F63
        65647572652046696E6973684E6272734F6E5072696E743B0D0A626567696E0D
        0A0D0A202046696E6973684E6272732E466F6E742E426F6C64203A3D2046616C
        73653B0D0A0D0A2020696620706C5072657644617948485B2746696E69736850
        6F73275D203D2031207468656E20626567696E0D0A2020202020202046696E69
        73684E6272732E466F6E742E426F6C64203A3D20547275653B0D0A2020656E64
        3B0D0A20200D0A656E643B0D0A0D436F6D706F6E656E744E616D65060A46696E
        6973684E627273094576656E744E616D6506074F6E5072696E74074576656E74
        494402200001060F5472614576656E7448616E646C65720B50726F6772616D4E
        616D65061554726966656374615061796F75744F6E5072696E740B50726F6772
        616D54797065070B747450726F63656475726506536F757263650C5A01000070
        726F6365647572652054726966656374615061796F75744F6E5072696E743B0D
        0A626567696E0D0A0D0A2054726966656374615061796F75742E466F6E742E42
        6F6C64203A3D2046616C73653B0D0A20696620706C5072657644617952485B27
        497354726966656374614D617463686564275D203D2054727565207468656E20
        626567696E0D0A2020202054726966656374615061796F75742E466F6E742E42
        6F6C64203A3D20547275653B0D0A20656E643B0D0A2020696620706C50726576
        44617952485B27497354726952616365275D203D2054727565207468656E2062
        6567696E0D0A2020202020202054726966656374615061796F75742E56697369
        626C65203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A
        2020202020202054726966656374615061796F75742E56697369626C65203A3D
        2046616C73653B0D0A2020656E643B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060E54726966656374615061796F7574094576656E744E616D
        6506074F6E5072696E74074576656E74494402200001060F5472614576656E74
        48616E646C65720B50726F6772616D4E616D6506155175696E656C6C61506179
        6F75744F6E5072696E740B50726F6772616D54797065070B747450726F636564
        75726506536F757263650C5E01000070726F636564757265205175696E656C6C
        615061796F75744F6E5072696E743B0D0A626567696E0D0A0D0A20205175696E
        656C6C615061796F75742E466F6E742E426F6C64203A3D2046616C73653B0D0A
        2020696620706C5072657644617952485B2749735175696E656C6C614D617463
        686564275D203D2054727565207468656E20626567696E0D0A20202020205175
        696E656C6C615061796F75742E466F6E742E426F6C64203A3D20547275653B0D
        0A2020656E643B0D0A2020696620706C5072657644617952485B274973517569
        52616365275D203D2054727565207468656E20626567696E0D0A202020202020
        205175696E656C6C615061796F75742E56697369626C65203A3D20547275653B
        0D0A2020656E6420656C736520626567696E0D0A202020202020205175696E65
        6C6C615061796F75742E56697369626C65203A3D2046616C73653B0D0A202065
        6E643B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060E517569
        6E656C6C615061796F7574094576656E744E616D6506074F6E5072696E740745
        76656E74494402200001060F5472614576656E7448616E646C65720B50726F67
        72616D4E616D650617537570657266656374615061796F75744F6E5072696E74
        0B50726F6772616D54797065070B747450726F63656475726506536F75726365
        0C7901000070726F63656475726520537570657266656374615061796F75744F
        6E5072696E743B0D0A626567696E0D0A0D0A2020537570657266656374615061
        796F75742E466F6E742E426F6C64203A3D2046616C73653B0D0A202069662070
        6C5072657644617952485B274973537570657266656374614D61746368656427
        5D203D2054727565207468656E20626567696E0D0A2020202020537570657266
        656374615061796F75742E466F6E742E426F6C64203A3D20547275653B0D0A20
        20656E643B0D0A20200D0A202069662028706C5072657644617952485B274973
        537570657252616365275D203D20547275652920207468656E20626567696E0D
        0A20202020202020537570657266656374615061796F75742E56697369626C65
        203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A202020
        20202020537570657266656374615061796F75742E56697369626C65203A3D20
        46616C73653B0D0A2020656E643B0D0A20200D0A20200D0A656E643B0D0A0D43
        6F6D706F6E656E744E616D650610537570657266656374615061796F75740945
        76656E744E616D6506074F6E5072696E74074576656E74494402200001060F54
        72614576656E7448616E646C65720B50726F6772616D4E616D6506125069636B
        345061796F75744F6E5072696E740B50726F6772616D54797065070B74745072
        6F63656475726506536F757263650C5501000070726F63656475726520506963
        6B345061796F75744F6E5072696E743B0D0A626567696E0D0A0D0A2020506963
        6B345061796F75742E466F6E742E426F6C64203A3D2046616C73653B0D0A2020
        696620706C5072657644617952485B2749735069636B344D6174636865644669
        72737452616365275D203D2054727565207468656E20626567696E0D0A202020
        20205069636B345061796F75742E466F6E742E426F6C64203A3D20547275653B
        0D0A2020656E643B0D0A2020696620706C5072657644617952485B274973506B
        3452616365275D203D2054727565207468656E20626567696E0D0A2020202020
        20205069636B345061796F75742E56697369626C65203A3D20547275653B0D0A
        2020656E6420656C736520626567696E0D0A202020202020205069636B345061
        796F75742E56697369626C65203A3D2046616C73653B0D0A2020656E643B0D0A
        0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060B5069636B34506179
        6F7574094576656E744E616D6506074F6E5072696E74074576656E7449440220
        0001060F5472614576656E7448616E646C65720B50726F6772616D4E616D6506
        214461696C79446F75626C655061796F75744669727374526163654F6E507269
        6E740B50726F6772616D54797065070B747450726F63656475726506536F7572
        63650CB601000070726F636564757265204461696C79446F75626C655061796F
        75744669727374526163654F6E5072696E743B0D0A626567696E0D0A0D0A2020
        204461696C79446F75626C655061796F75744669727374526163652E466F6E74
        2E426F6C64203A3D2046616C73653B0D0A202020696620706C50726576446179
        52485B2749734461696C79446F75626C654D6174636865644669727374526163
        65275D203D2054727565207468656E20626567696E0D0A202020202020446169
        6C79446F75626C655061796F75744669727374526163652E466F6E742E426F6C
        64203A3D20547275653B0D0A202020656E643B0D0A2020200D0A202020696620
        706C5072657644617952485B274973444452616365275D203D20547275652074
        68656E20626567696E0D0A202020202020204461696C79446F75626C65506179
        6F75744669727374526163652E56697369626C65203A3D20547275653B0D0A20
        2020656E6420656C736520626567696E0D0A202020202020204461696C79446F
        75626C655061796F75744669727374526163652E56697369626C65203A3D2046
        616C73653B0D0A202020656E643B0D0A20202020200D0A656E643B0D0A0D436F
        6D706F6E656E744E616D65061A4461696C79446F75626C655061796F75744669
        72737452616365094576656E744E616D6506074F6E5072696E74074576656E74
        494402200001060F5472614576656E7448616E646C65720B50726F6772616D4E
        616D65061153686565744F726465724F6E5072696E740B50726F6772616D5479
        7065070B747450726F63656475726506536F7572636506EB70726F6365647572
        652053686565744F726465724F6E5072696E743B0D0A626567696E0D0A0D0A20
        2053686565744F726465722E466F6E742E426F6C64203A3D2046616C73653B0D
        0A20202020200D0A2020696620706C5072657644617948485B2746696E697368
        506F73275D203D2031207468656E20626567696E0D0A20202020205368656574
        4F726465722E466F6E742E426F6C64203A3D20547275653B0D0A2020656E6420
        656C736520626567696E0D0A202020202053686565744F726465722E466F6E74
        2E426F6C64203A3D2046616C73653B0D0A2020656E643B0D0A20200D0A656E64
        3B0D0A0D436F6D706F6E656E744E616D65060A53686565744F72646572094576
        656E744E616D6506074F6E5072696E74074576656E74494402200001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D65061057696E5061
        796F75744F6E5072696E740B50726F6772616D54797065070B747450726F6365
        6475726506536F7572636506E970726F6365647572652057696E5061796F7574
        4F6E5072696E743B0D0A626567696E0D0A0D0A20202057696E5061796F75742E
        466F6E742E426F6C64203A3D2046616C73653B0D0A20202020200D0A20202069
        6620706C5072657644617948485B2746696E697368506F73275D203D20312074
        68656E20626567696E0D0A202020202057696E5061796F75742E466F6E742E42
        6F6C64203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A
        202020202057696E5061796F75742E466F6E742E426F6C64203A3D2046616C73
        653B0D0A2020656E643B0D0A20200D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D65060957696E5061796F7574094576656E744E616D6506074F6E507269
        6E74074576656E74494402200001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D6506115069636B3457616765724F6E5072696E740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650C52
        01000070726F636564757265205069636B3457616765724F6E5072696E743B0D
        0A626567696E0D0A0D0A20205069636B3457616765722E466F6E742E426F6C64
        203A3D2046616C73653B0D0A2020696620706C5072657644617952485B274973
        5069636B344D617463686564466972737452616365275D203D20547275652074
        68656E20626567696E0D0A20202020205069636B3457616765722E466F6E742E
        426F6C64203A3D20547275653B0D0A2020656E643B0D0A2020696620706C5072
        657644617952485B274973506B3452616365275D203D2054727565207468656E
        20626567696E0D0A202020202020205069636B3457616765722E56697369626C
        65203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A2020
        20202020205069636B3457616765722E56697369626C65203A3D2046616C7365
        3B0D0A2020656E643B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E
        616D65060A5069636B345761676572094576656E744E616D6506074F6E507269
        6E74074576656E74494402200001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D6506115069636B3357616765724F6E5072696E740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650C54
        01000070726F636564757265205069636B3357616765724F6E5072696E743B0D
        0A626567696E0D0A20200D0A20205069636B3357616765722E466F6E742E426F
        6C64203A3D2046616C73653B0D0A2020696620706C5072657644617952485B27
        49735069636B334D617463686564466972737452616365275D203D2054727565
        207468656E20626567696E0D0A20202020205069636B3357616765722E466F6E
        742E426F6C64203A3D20547275653B0D0A2020656E643B0D0A2020696620706C
        5072657644617952485B274973506B3352616365275D203D2054727565207468
        656E20626567696E0D0A202020202020205069636B3357616765722E56697369
        626C65203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A
        202020202020205069636B3357616765722E56697369626C65203A3D2046616C
        73653B0D0A2020656E643B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E
        744E616D65060A5069636B335761676572094576656E744E616D6506074F6E50
        72696E74074576656E74494402200001060F5472614576656E7448616E646C65
        720B50726F6772616D4E616D6506174461696C79446F75626C6557616765724F
        6E5072696E740B50726F6772616D54797065070B747450726F63656475726506
        536F757263650C7E01000070726F636564757265204461696C79446F75626C65
        57616765724F6E5072696E743B0D0A626567696E0D0A0D0A20204461696C7944
        6F75626C6557616765722E466F6E742E426F6C64203A3D2046616C73653B0D0A
        2020696620706C5072657644617952485B2749734461696C79446F75626C654D
        617463686564466972737452616365275D203D2054727565207468656E206265
        67696E0D0A20202020204461696C79446F75626C6557616765722E466F6E742E
        426F6C64203A3D20547275653B0D0A2020656E643B0D0A20200D0A2020696620
        706C5072657644617952485B274973444452616365275D203D20547275652074
        68656E20626567696E0D0A202020202020204461696C79446F75626C65576167
        65722E56697369626C65203A3D20547275653B0D0A2020656E6420656C736520
        626567696E0D0A202020202020204461696C79446F75626C6557616765722E56
        697369626C65203A3D2046616C73653B0D0A2020656E643B0D0A2020200D0A20
        200D0A656E643B0D0A0D436F6D706F6E656E744E616D6506104461696C79446F
        75626C655761676572094576656E744E616D6506074F6E5072696E7407457665
        6E74494402200001060F5472614576656E7448616E646C65720B50726F677261
        6D4E616D6506145175696E656C6C6157616765724F6E5072696E740B50726F67
        72616D54797065070B747450726F63656475726506536F757263650C5F010000
        70726F636564757265205175696E656C6C6157616765724F6E5072696E743B0D
        0A626567696E0D0A0D0A20205175696E656C6C6157616765722E466F6E742E42
        6F6C64203A3D2046616C73653B0D0A20200D0A2020696620706C507265764461
        7952485B2749735175696E656C6C614D617463686564275D203D205472756520
        7468656E20626567696E0D0A20202020205175696E656C6C6157616765722E46
        6F6E742E426F6C64203A3D20547275653B0D0A2020656E643B0D0A2020696620
        706C5072657644617952485B27497351756952616365275D203D205472756520
        7468656E20626567696E0D0A202020202020205175696E656C6C615761676572
        2E56697369626C65203A3D20547275653B0D0A2020656E6420656C7365206265
        67696E0D0A202020202020205175696E656C6C6157616765722E56697369626C
        65203A3D2046616C73653B0D0A2020656E643B0D0A0D0A0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D65060D5175696E656C6C61576167657209457665
        6E744E616D6506074F6E5072696E74074576656E74494402200001060F547261
        4576656E7448616E646C65720B50726F6772616D4E616D650612457861637461
        57616765724F6E5072696E740B50726F6772616D54797065070B747450726F63
        656475726506536F757263650C5301000070726F636564757265204578616374
        6157616765724F6E5072696E743B0D0A626567696E0D0A200D0A202045786163
        746157616765722E466F6E742E426F6C64203A3D2046616C73653B0D0A202069
        6620706C5072657644617952485B2749734578616374614D617463686564275D
        203D2054727565207468656E20626567696E0D0A202020202020457861637461
        57616765722E466F6E742E426F6C64203A3D20547275653B0D0A2020656E643B
        0D0A20202020696620706C5072657644617952485B2749734578615261636527
        5D203D2054727565207468656E20626567696E0D0A2020202020202045786163
        746157616765722E56697369626C65203A3D20547275653B0D0A2020656E6420
        656C736520626567696E0D0A2020202020202045786163746157616765722E56
        697369626C65203A3D2046616C73653B0D0A2020656E643B0D0A0D0A0D0A656E
        643B0D0A0D436F6D706F6E656E744E616D65060B457861637461576167657209
        4576656E744E616D6506074F6E5072696E74074576656E74494402200001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D650614547269
        666563746157616765724F6E5072696E740B50726F6772616D54797065070B74
        7450726F63656475726506536F757263650C5B01000070726F63656475726520
        547269666563746157616765724F6E5072696E743B0D0A626567696E0D0A0D0A
        2020547269666563746157616765722E466F6E742E426F6C64203A3D2046616C
        73653B0D0A2020696620706C5072657644617952485B27497354726966656374
        614D617463686564275D203D2054727565207468656E20626567696E0D0A2020
        202020547269666563746157616765722E466F6E742E426F6C64203A3D205472
        75653B0D0A2020656E643B0D0A2020696620706C5072657644617952485B2749
        7354726952616365275D203D2054727565207468656E20626567696E0D0A2020
        2020202020547269666563746157616765722E56697369626C65203A3D205472
        75653B0D0A2020656E6420656C736520626567696E0D0A202020202020205472
        69666563746157616765722E56697369626C65203A3D2046616C73653B0D0A20
        20656E643B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506
        0D54726966656374615761676572094576656E744E616D6506074F6E5072696E
        74074576656E74494402200001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D6506165375706572666563746157616765724F6E507269
        6E740B50726F6772616D54797065070B747450726F63656475726506536F7572
        63650C6801000070726F63656475726520537570657266656374615761676572
        4F6E5072696E743B0D0A626567696E0D0A0D0A20205375706572666563746157
        616765722E466F6E742E426F6C64203A3D2046616C73653B0D0A202069662070
        6C5072657644617952485B274973537570657266656374614D61746368656427
        5D203D2054727565207468656E20626567696E0D0A2020095375706572666563
        746157616765722E466F6E742E426F6C64203A3D20547275653B0D0A2020656E
        643B0D0A20200D0A202069662028706C5072657644617952485B274973537570
        657252616365275D203D2054727565297468656E20626567696E0D0A20202020
        20205375706572666563746157616765722E56697369626C65203A3D20547275
        653B0D0A2020656E6420656C736520626567696E0D0A20202020202053757065
        72666563746157616765722E56697369626C65203A3D2046616C73653B0D0A20
        20656E643B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060F53
        7570657266656374615761676572094576656E744E616D6506074F6E5072696E
        74074576656E74494402200001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D6506134578616374615061796F75744F6E5072696E740B
        50726F6772616D54797065070B747450726F63656475726506536F757263650C
        6001000070726F636564757265204578616374615061796F75744F6E5072696E
        743B0D0A626567696E0D0A0D0A20204578616374615061796F75742E466F6E74
        2E426F6C64203A3D2046616C73653B0D0A2020696620706C5072657644617952
        485B2749734578616374614D617463686564275D203D2054727565207468656E
        20626567696E0D0A20202020204578616374615061796F75742E466F6E742E42
        6F6C64203A3D20547275653B0D0A2020656E643B0D0A202020200D0A20206966
        20706C5072657644617952485B27497345786152616365275D203D2054727565
        207468656E20626567696E0D0A202020202020204578616374615061796F7574
        2E56697369626C65203A3D20547275653B0D0A2020656E6420656C7365206265
        67696E0D0A202020202020204578616374615061796F75742E56697369626C65
        203A3D2046616C73653B0D0A2020656E643B0D0A20200D0A0D0A0D0A0D0A656E
        643B0D0A0D436F6D706F6E656E744E616D65060C4578616374615061796F7574
        094576656E744E616D6506074F6E5072696E74074576656E7449440220000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506134465
        7461696C416674657247656E65726174650B50726F6772616D54797065070B74
        7450726F63656475726506536F75726365062F70726F63656475726520446574
        61696C416674657247656E65726174653B0D0A626567696E0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060644657461696C094576656E744E61
        6D65060D416674657247656E6572617465074576656E74494402190001060F54
        72614576656E7448616E646C65720B50726F6772616D4E616D6506125069636B
        335061796F75744F6E5072696E740B50726F6772616D54797065070B74745072
        6F63656475726506536F757263650C5701000070726F63656475726520506963
        6B335061796F75744F6E5072696E743B0D0A626567696E0D0A20200D0A202050
        69636B335061796F75742E466F6E742E426F6C64203A3D2046616C73653B0D0A
        2020696620706C5072657644617952485B2749735069636B334D617463686564
        466972737452616365275D203D2054727565207468656E20626567696E0D0A20
        202020205069636B335061796F75742E466F6E742E426F6C64203A3D20547275
        653B0D0A2020656E643B0D0A2020696620706C5072657644617952485B274973
        506B3352616365275D203D2054727565207468656E20626567696E0D0A202020
        202020205069636B335061796F75742E56697369626C65203A3D20547275653B
        0D0A2020656E6420656C736520626567696E0D0A202020202020205069636B33
        5061796F75742E56697369626C65203A3D2046616C73653B0D0A2020656E643B
        0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060B5069636B3350
        61796F7574094576656E744E616D6506074F6E5072696E74074576656E744944
        02200001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        65060E57696E4E6272734F6E5072696E740B50726F6772616D54797065070B74
        7450726F63656475726506536F7572636506DE70726F6365647572652057696E
        4E6272734F6E5072696E743B0D0A626567696E0D0A0D0A202057696E4E627273
        2E466F6E742E426F6C64203A3D2046616C73653B0D0A20202020200D0A202020
        696620706C5072657644617948485B2746696E697368506F73275D203D203120
        7468656E20626567696E0D0A202020202057696E4E6272732E466F6E742E426F
        6C64203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A20
        2020202057696E4E6272732E466F6E742E426F6C64203A3D2046616C73653B0D
        0A2020656E643B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506
        0757696E4E627273094576656E744E616D6506074F6E5072696E74074576656E
        74494402200001060F5472614576656E7448616E646C65720B50726F6772616D
        4E616D65061357696E506C635061796F75744F6E5072696E740B50726F677261
        6D54797065070B747450726F63656475726506536F7572636506F470726F6365
        647572652057696E506C635061796F75744F6E5072696E743B0D0A626567696E
        0D0A0D0A202057696E506C635061796F75742E466F6E742E426F6C64203A3D20
        46616C73653B0D0A20202020200D0A2069662028706C5072657644617948485B
        2746696E697368506F73275D203D203129207468656E20626567696E0D0A2020
        20202057696E506C635061796F75742E466F6E742E426F6C64203A3D20547275
        653B0D0A2020656E6420656C736520626567696E0D0A202020202057696E506C
        635061796F75742E466F6E742E426F6C64203A3D2046616C73653B0D0A202065
        6E643B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060C57
        696E506C635061796F7574094576656E744E616D6506074F6E5072696E740745
        76656E74494402200001060F5472614576656E7448616E646C65720B50726F67
        72616D4E616D65061357696E53686F5061796F75744F6E5072696E740B50726F
        6772616D54797065070B747450726F63656475726506536F7572636506F77072
        6F6365647572652057696E53686F5061796F75744F6E5072696E743B0D0A6265
        67696E0D0A0D0A202057696E53686F5061796F75742E466F6E742E426F6C6420
        3A3D2046616C73653B0D0A20202020200D0A202069662028706C507265764461
        7948485B2746696E697368506F73275D203D203129207468656E20626567696E
        0D0A202020202057696E53686F5061796F75742E466F6E742E426F6C64203A3D
        20547275653B0D0A2020656E6420656C736520626567696E0D0A202020202057
        696E53686F5061796F75742E466F6E742E426F6C64203A3D2046616C73653B0D
        0A2020656E643B0D0A20200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E
        616D65060C57696E53686F5061796F7574094576656E744E616D6506074F6E50
        72696E74074576656E74494402200001060F5472614576656E7448616E646C65
        720B50726F6772616D4E616D65060E506C634E6272734F6E5072696E740B5072
        6F6772616D54797065070B747450726F63656475726506536F7572636506E970
        726F63656475726520506C634E6272734F6E5072696E743B0D0A626567696E0D
        0A0D0A202020506C634E6272732E466F6E742E426F6C64203A3D2046616C7365
        3B0D0A20202020200D0A20202069662028706C5072657644617948485B274669
        6E697368506F73275D203D203229207468656E20626567696E0D0A2020202020
        20506C634E6272732E466F6E742E426F6C64203A3D20547275653B0D0A202020
        656E6420656C736520626567696E0D0A202020202020506C634E6272732E466F
        6E742E426F6C64203A3D2046616C73653B0D0A202020656E643B0D0A20200D0A
        0D0A656E643B0D0A0D436F6D706F6E656E744E616D650607506C634E62727309
        4576656E744E616D6506074F6E5072696E74074576656E74494402200001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D65060E53686F
        4E6272734F6E5072696E740B50726F6772616D54797065070B747450726F6365
        6475726506536F7572636506E170726F6365647572652053686F4E6272734F6E
        5072696E743B0D0A626567696E0D0A20202053686F4E6272732E466F6E742E42
        6F6C64203A3D2046616C73653B0D0A20202020200D0A20202069662028706C50
        72657644617948485B2746696E697368506F73275D203D203329207468656E20
        626567696E0D0A202020202053686F4E6272732E466F6E742E426F6C64203A3D
        20547275653B0D0A202020656E6420656C736520626567696E0D0A2020202020
        53686F4E6272732E466F6E742E426F6C64203A3D2046616C73653B0D0A202020
        656E643B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506075368
        6F4E627273094576656E744E616D6506074F6E5072696E74074576656E744944
        02200001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        650610506C635061796F75744F6E5072696E740B50726F6772616D5479706507
        0B747450726F63656475726506536F7572636506E870726F6365647572652050
        6C635061796F75744F6E5072696E743B0D0A626567696E0D0A202020506C6350
        61796F75742E466F6E742E426F6C64203A3D2046616C73653B0D0A2020202020
        0D0A20202069662028706C5072657644617948485B2746696E697368506F7327
        5D203D203229207468656E20626567696E0D0A2020202020506C635061796F75
        742E466F6E742E426F6C64203A3D20547275653B0D0A202020656E6420656C73
        6520626567696E0D0A2020202020506C635061796F75742E466F6E742E426F6C
        64203A3D2046616C73653B0D0A2020656E643B0D0A0D0A656E643B0D0A0D436F
        6D706F6E656E744E616D650609506C635061796F7574094576656E744E616D65
        06074F6E5072696E74074576656E74494402200001060F5472614576656E7448
        616E646C65720B50726F6772616D4E616D650613506C6353686F5061796F7574
        4F6E5072696E740B50726F6772616D54797065070B747450726F636564757265
        06536F7572636506F670726F63656475726520506C6353686F5061796F75744F
        6E5072696E743B0D0A626567696E0D0A202020506C6353686F5061796F75742E
        466F6E742E426F6C64203A3D2046616C73653B0D0A20202020200D0A20202069
        662028706C5072657644617948485B2746696E697368506F73275D203D203229
        207468656E20626567696E0D0A2020202020506C6353686F5061796F75742E46
        6F6E742E426F6C64203A3D20547275653B0D0A202020656E6420656C73652062
        6567696E0D0A2020202020506C6353686F5061796F75742E466F6E742E426F6C
        64203A3D2046616C73653B0D0A2020656E643B0D0A0D0A0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D65060C506C6353686F5061796F7574094576656E
        744E616D6506074F6E5072696E74074576656E74494402200001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061053686F5061796F
        75744F6E5072696E740B50726F6772616D54797065070B747450726F63656475
        726506536F7572636506E870726F6365647572652053686F5061796F75744F6E
        5072696E743B0D0A626567696E0D0A20202053686F5061796F75742E466F6E74
        2E426F6C64203A3D2046616C73653B0D0A20202020200D0A202069662028706C
        5072657644617948485B2746696E697368506F73275D203D203329207468656E
        20626567696E0D0A202020202053686F5061796F75742E466F6E742E426F6C64
        203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A202020
        202053686F5061796F75742E466F6E742E426F6C64203A3D2046616C73653B0D
        0A2020656E643B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        65060953686F5061796F7574094576656E744E616D6506074F6E5072696E7407
        4576656E74494402200001060F5472614576656E7448616E646C65720B50726F
        6772616D4E616D6506164461696C79446F75626C654E6272734F6E5072696E74
        0B50726F6772616D54797065070B747450726F63656475726506536F75726365
        0C7601000070726F636564757265204461696C79446F75626C654E6272734F6E
        5072696E743B0D0A626567696E0D0A0D0A20204461696C79446F75626C654E62
        72732E466F6E742E426F6C64203A3D2046616C73653B0D0A2020696620706C50
        72657644617952485B2749734461696C79446F75626C654D6174636865644669
        72737452616365275D203D2054727565207468656E20626567696E0D0A202020
        20204461696C79446F75626C654E6272732E466F6E742E426F6C64203A3D2054
        7275653B0D0A2020656E643B0D0A202020200D0A2020696620706C5072657644
        617952485B274973444452616365275D203D2054727565207468656E20626567
        696E0D0A202020202020204461696C79446F75626C654E6272732E5669736962
        6C65203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A20
        2020202020204461696C79446F75626C654E6272732E56697369626C65203A3D
        2046616C73653B0D0A2020656E643B0D0A0D0A0D0A656E643B0D0A0D436F6D70
        6F6E656E744E616D65060F4461696C79446F75626C654E627273094576656E74
        4E616D6506074F6E5072696E74074576656E74494402200001060F5472614576
        656E7448616E646C65720B50726F6772616D4E616D6506105069636B334E6272
        734F6E5072696E740B50726F6772616D54797065070B747450726F6365647572
        6506536F757263650C4C01000070726F636564757265205069636B334E627273
        4F6E5072696E743B0D0A626567696E0D0A20205069636B334E6272732E466F6E
        742E426F6C64203A3D2046616C73653B0D0A2020696620706C50726576446179
        52485B2749735069636B334D617463686564466972737452616365275D203D20
        54727565207468656E20626567696E0D0A20202020205069636B334E6272732E
        466F6E742E426F6C64203A3D20547275653B0D0A2020656E643B0D0A20200D0A
        20696620706C5072657644617952485B274973506B3352616365275D203D2054
        727565207468656E20626567696E0D0A202020202020205069636B334E627273
        2E56697369626C65203A3D20547275653B0D0A2020656E6420656C7365206265
        67696E0D0A202020202020205069636B334E6272732E56697369626C65203A3D
        2046616C73653B0D0A2020656E643B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D6506095069636B334E627273094576656E744E616D6506074F6E
        5072696E74074576656E74494402200001060F5472614576656E7448616E646C
        65720B50726F6772616D4E616D6506105069636B344E6272734F6E5072696E74
        0B50726F6772616D54797065070B747450726F63656475726506536F75726365
        0C5001000070726F636564757265205069636B344E6272734F6E5072696E743B
        0D0A626567696E0D0A20205069636B344E6272732E466F6E742E426F6C64203A
        3D2046616C73653B0D0A2020696620706C5072657644617952485B2749735069
        636B344D617463686564466972737452616365275D203D205472756520746865
        6E20626567696E0D0A20202020205069636B344E6272732E466F6E742E426F6C
        64203A3D20547275653B0D0A2020656E643B0D0A20200D0A20696620706C5072
        657644617952485B274973506B3452616365275D203D2054727565207468656E
        20626567696E0D0A202020202020205069636B344E6272732E56697369626C65
        203A3D20547275653B0D0A2020656E6420656C736520626567696E0D0A202020
        202020205069636B344E6272732E56697369626C65203A3D2046616C73653B0D
        0A2020656E643B0D0A20200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E
        616D6506095069636B344E627273094576656E744E616D6506074F6E5072696E
        74074576656E74494402200001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D65060F4C617465506163654F6E5072696E740B50726F67
        72616D54797065070B747450726F63656475726506536F757263650C51010000
        70726F636564757265204C617465506163654F6E5072696E743B0D0A62656769
        6E0D0A2020202020204C617465506163652E466F6E742E426F6C64203A3D2046
        616C73653B0D0A2020202020204C617465506163652E466F6E742E556E646572
        6C696E65203A3D2046616C73653B0D0A2020202020200D0A09696620706C5072
        657644617948485B274C6174655061636552616E6B275D203D2031207468656E
        20626567696E0D0A2020200920204C617465506163652E466F6E742E426F6C64
        203A3D20547275653B0D0A2020202020202020696620706C5072657644617948
        485B2749734261636B446F75626C654C696E6572275D207468656E2062656769
        6E0D0A092020202020204C617465506163652E466F6E742E556E6465726C696E
        65203A3D20547275653B0D0A202020202020202020656E643B200D0A20202020
        2020656E643B200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506
        084C61746550616365094576656E744E616D6506074F6E5072696E7407457665
        6E74494402200001060F5472614576656E7448616E646C65720B50726F677261
        6D4E616D65060E45726C506163654F6E5072696E740B50726F6772616D547970
        65070B747450726F63656475726506536F757263650C4F01000070726F636564
        7572652045726C506163654F6E5072696E743B0D0A626567696E0D0A0D0A2020
        2020202045726C506163652E466F6E742E426F6C64203A3D2046616C73653B0D
        0A20202020202045726C506163652E466F6E742E556E6465726C696E65203A3D
        2046616C73653B0D0A2020202020200D0A09696620706C507265764461794848
        5B274561726C795061636552616E6B275D203D2031207468656E20626567696E
        0D0A0920202045726C506163652E466F6E742E426F6C64203A3D20547275653B
        0D0A202020202020202020696620706C5072657644617948485B27497346726F
        6E74446F75626C654C696E6572275D207468656E20626567696E0D0A09202020
        20202045726C506163652E466F6E742E556E6465726C696E65203A3D20547275
        653B0D0A202020202020202020656E643B200D0A202020202020656E643B200D
        0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060745726C50616365
        094576656E744E616D6506074F6E5072696E74074576656E7449440220000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D65060E4D69
        64506163654F6E5072696E740B50726F6772616D54797065070B747450726F63
        656475726506536F757263650C1B02000070726F636564757265204D69645061
        63654F6E5072696E743B0D0A626567696E0D0A094D6964506163652E466F6E74
        2E556E6465726C696E65203A3D2046616C73653B0D0A2020202020204D696450
        6163652E466F6E742E426F6C64203A3D2046616C73653B0D0A2020202020200D
        0A09696620706C5072657644617948485B274D6964646C655061636552616E6B
        275D203D2031207468656E20626567696E0D0A092020204D6964506163652E46
        6F6E742E426F6C64203A3D20547275653B0D0A20202020202020202069662070
        6C5072657644617948485B27497346726F6E74446F75626C654C696E6572275D
        207468656E20626567696E0D0A092020202020204D6964506163652E466F6E74
        2E556E6465726C696E65203A3D20547275653B0D0A202020202020202020656E
        643B200D0A202020202020656E643B200D0A0D0A09696620706C507265764461
        7948485B274D6964646C655061636552616E6B275D203D2031207468656E2062
        6567696E0D0A092020204D6964506163652E466F6E742E426F6C64203A3D2054
        7275653B0D0A202020202020202020696620706C5072657644617948485B2749
        734261636B446F75626C654C696E6572275D207468656E20626567696E0D0A09
        2020202020204D6964506163652E466F6E742E556E6465726C696E65203A3D20
        547275653B0D0A202020202020202020656E643B200D0A202020202020656E64
        3B200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506074D696450
        616365094576656E744E616D6506074F6E5072696E74074576656E7449440220
        0001060F5472614576656E7448616E646C65720B50726F6772616D4E616D6506
        126C626C45726C506F734F6E476574546578740B50726F6772616D5479706507
        0B747450726F63656475726506536F757263650C2101000070726F6365647572
        65206C626C45726C506F734F6E476574546578742876617220546578743A2053
        7472696E67293B0D0A626567696E0D0A2054657874203A3D202720273B0D0A20
        200D0A2020696620706C5072657644617948485B274561726C7950616365506F
        73275D203C3E2039393939207468656E20626567696E0D0A2020202069662070
        6C5072657644617948485B274561726C7950616365506F73275D203C3E203020
        7468656E20626567696E0D0A092020696620706C5072657644617948485B2745
        61726C7950616365506F7352616E6B275D203D2031207468656E20626567696E
        0D0A0909202054657874203A3D20272A273B0D0A092020656E643B0D0A202020
        20656E643B0D0A2020656E643B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D6506096C626C45726C506F73094576656E744E616D6506094F6E
        47657454657874074576656E74494402350001060F5472614576656E7448616E
        646C65720B50726F6772616D4E616D6506126C626C4D6964506F734F6E476574
        546578740B50726F6772616D54797065070B747450726F63656475726506536F
        757263650C3E01000070726F636564757265206C626C4D6964506F734F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A54657874203A3D202720273B0D0A0D0A2020696620706C5072657644617948
        485B274D6964646C6550616365506F73275D203C3E2039393939207468656E20
        626567696E0D0A2020202020696620706C5072657644617948485B274D696464
        6C6550616365506F73275D203C3E2030207468656E20626567696E0D0A202020
        2020202020696620706C5072657644617948485B274D6964646C655061636550
        6F7352616E6B275D203D2031207468656E20626567696E0D0A20202020202020
        2020202054657874203A3D20272A273B0D0A2020202020202020656E643B0D0A
        2020202020656E643B0D0A2020656E643B202020202020200D0A0D0A200D0A0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D6506096C626C4D6964506F73
        094576656E744E616D6506094F6E47657454657874074576656E744944023500
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650613
        6C626C4C617465506F734F6E476574546578740B50726F6772616D5479706507
        0B747450726F63656475726506536F757263650C3701000070726F6365647572
        65206C626C4C617465506F734F6E476574546578742876617220546578743A20
        537472696E67293B0D0A626567696E0D0A0D0A20200D0A202054657874203A3D
        202720273B0D0A20200D0A2020696620706C5072657644617948485B274C6174
        6550616365506F73275D203C3E2039393939207468656E20626567696E0D0A20
        20202020696620706C5072657644617948485B274C61746550616365506F7327
        5D203C3E2030207468656E20626567696E0D0A2020202020202020696620706C
        5072657644617948485B274C61746550616365506F7352616E6B275D203D2031
        207468656E20626567696E0D0A2009202020202054657874203A3D20272A273B
        0D0A2020202020202020656E643B0D0A2020202020656E643B0D0A2020656E64
        3B0D0A0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060A6C
        626C4C617465506F73094576656E744E616D6506094F6E476574546578740745
        76656E74494402350001060F5472614576656E7448616E646C65720B50726F67
        72616D4E616D6506135175696E656C6C614E6272734F6E5072696E740B50726F
        6772616D54797065070B747450726F63656475726506536F757263650C590100
        0070726F636564757265205175696E656C6C614E6272734F6E5072696E743B0D
        0A626567696E090D0A20205175696E656C6C614E6272732E466F6E742E426F6C
        64203A3D2046616C73653B0D0A2020696620706C5072657644617952485B2749
        735175696E656C6C614D617463686564275D203D2054727565207468656E2062
        6567696E0D0A20202020205175696E656C6C614E6272732E466F6E742E426F6C
        64203A3D20547275653B0D0A2020656E643B0D0A202020200D0A202069662070
        6C5072657644617952485B27497351756952616365275D203D20547275652074
        68656E20626567696E0D0A202020202020205175696E656C6C614E6272732E56
        697369626C65203A3D20547275653B0D0A2020656E6420656C73652062656769
        6E0D0A202020202020205175696E656C6C614E6272732E56697369626C65203A
        3D2046616C73653B0D0A2020656E643B0D0A0D0A656E643B0D0A0D436F6D706F
        6E656E744E616D65060C5175696E656C6C614E627273094576656E744E616D65
        06074F6E5072696E74074576656E74494402200001060F5472614576656E7448
        616E646C65720B50726F6772616D4E616D6506114578616374614E6272734F6E
        5072696E740B50726F6772616D54797065070B747450726F6365647572650653
        6F757263650C4E01000070726F636564757265204578616374614E6272734F6E
        5072696E743B0D0A626567696E0D0A20204578616374614E6272732E466F6E74
        2E426F6C64203A3D2046616C73653B0D0A2020696620706C5072657644617952
        485B2749734578616374614D617463686564275D203D2054727565207468656E
        20626567696E0D0A20202020204578616374614E6272732E466F6E742E426F6C
        64203A3D20547275653B0D0A2020656E643B0D0A202020200D0A202069662070
        6C5072657644617952485B27497345786152616365275D203D20547275652074
        68656E20626567696E0D0A202020202020204578616374614E6272732E566973
        69626C65203A3D20547275653B0D0A2020656E6420656C736520626567696E0D
        0A202020202020204578616374614E6272732E56697369626C65203A3D204661
        6C73653B0D0A2020656E643B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E65
        6E744E616D65060A4578616374614E627273094576656E744E616D6506074F6E
        5072696E74074576656E74494402200001060F5472614576656E7448616E646C
        65720B50726F6772616D4E616D65061354726966656374614E6272734F6E5072
        696E740B50726F6772616D54797065070B747450726F63656475726506536F75
        7263650C5A01000070726F6365647572652054726966656374614E6272734F6E
        5072696E743B0D0A626567696E0D0A202054726966656374614E6272732E466F
        6E742E426F6C64203A3D2046616C73653B0D0A2020696620706C507265764461
        7952485B27497354726966656374614D617463686564275D203D205472756520
        7468656E20626567696E0D0A202020202054726966656374614E6272732E466F
        6E742E426F6C64203A3D20547275653B0D0A2020656E643B0D0A202020200D0A
        2020696620706C5072657644617952485B27497354726952616365275D203D20
        54727565207468656E20626567696E0D0A202020202020205472696665637461
        4E6272732E56697369626C65203A3D20547275653B0D0A2020656E6420656C73
        6520626567696E0D0A2020202020202054726966656374614E6272732E566973
        69626C65203A3D2046616C73653B0D0A2020656E643B0D0A0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060C54726966656374614E6272730945
        76656E744E616D6506074F6E5072696E74074576656E74494402200001060F54
        72614576656E7448616E646C65720B50726F6772616D4E616D65061553757065
        7266656374614E6272734F6E5072696E740B50726F6772616D54797065070B74
        7450726F63656475726506536F757263650C6001000070726F63656475726520
        537570657266656374614E6272734F6E5072696E743B0D0A626567696E0D0A0D
        0A2020537570657266656374614E6272732E466F6E742E426F6C64203A3D2046
        616C73653B0D0A2020696620706C5072657644617952485B2749735375706572
        66656374614D617463686564275D203D2054727565207468656E20626567696E
        0D0A2020202020537570657266656374614E6272732E466F6E742E426F6C6420
        3A3D20547275653B0D0A2020656E643B0D0A202020200D0A202069662028706C
        5072657644617952485B274973537570657252616365275D203D205472756529
        207468656E20626567696E0D0A09537570657266656374614E6272732E566973
        69626C65203A3D20547275653B0D0A2020656E6420656C736520626567696E0D
        0A09537570657266656374614E6272732E56697369626C65203A3D2046616C73
        653B0D0A2020656E643B0D0A20200D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D65060E537570657266656374614E627273094576656E744E616D650607
        4F6E5072696E74074576656E74494402200000}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object timCloseFormCheck: TTimer
    OnTimer = timCloseFormCheckTimer
    Left = 464
    Top = 40
  end
  object tblPrevDayRH: TDBISAMTable
    AutoCalcFields = False
    AutoDisplayLabels = False
    CopyOnAppend = False
    OnNewRecord = tblPrevDayRHNewRecord
    DatabaseName = 'dbPrevDayReport'
    EngineVersion = '4.21 Build 10'
    IndexName = 'ByActualPrimary'
    MasterFields = 'TrkCode;RaceDate;RaceNbr'
    MasterSource = dsPrevDayHH
    TableName = 'PrevDayRH'
    Left = 32
    Top = 120
  end
  object dsPrevDayRH: TDataSource
    DataSet = tblPrevDayRH
    Left = 32
    Top = 160
  end
  object plPrevDayRH: TppDBPipeline
    DataSource = dsPrevDayRH
    CloseDataSource = True
    UserName = 'plPrevDayRH'
    Left = 40
    Top = 232
    MasterDataPipelineName = 'plPrevDayHH'
  end
  object hLog: TmLog
    LogFileName = 'default.log'
    LogSize = 10000000
    ShowSeverityLevelInLog = True
    TraceLevel = mtrcOperationDetail
    TraceLevelRegKeyValue = '\software\masoft\logs\tracelevels'
    About = 'Version 1.2, 2004'#174' MASoft'
    Left = 280
    Top = 225
  end
end
