�
 TQUERYFORM 0[  TPF0
TQueryForm	QueryFormLeftTopR
AutoScrollCaption	SQL QueryClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	FormStyle
fsMDIChild
KeyPreview	OldCreateOrder	PositionpoDefaultPosOnlyVisible	
OnActivateFormActivateOnClose	FormCloseOnCloseQueryFormCloseQueryOnCreate
FormCreate	OnDestroyFormDestroyPixelsPerInch`
TextHeight TPanelPanel1Left Top Width�Height�AlignalClient
BevelOuterbvNoneBorderWidthTabOrder  TPageControlQueryNotebookLeftTopWidth�Height�
ActivePageSQLSheetAlignalClientTabOrder OnChangeQueryNotebookChange 	TTabSheetSQLSheetTag� CaptionS&QL	PopupMenuMainForm.HelpPopup TLabelLabel2Tag� LeftfTopWidthLHeight	AlignmenttaRightJustifyCaptionMax Row Count	PopupMenuMainForm.HelpPopup  TLabelLabel3Tag� LeftTopKWidthHeight	AlignmenttaRightJustifyAnchorsakRightakBottom CaptionRow	PopupMenuMainForm.HelpPopup  TLabelLabel4Tag� LeftsTopKWidth#Height	AlignmenttaRightJustifyAnchorsakRightakBottom CaptionColumn	PopupMenuMainForm.HelpPopup  TButtonLoadSQLButtonTag� LeftTopWidthsHeightCaption&Load SQL from File...	PopupMenuMainForm.HelpPopupTabOrder OnClickLoadSQLButtonClick  TButtonSaveSQLButtonTag� Left� TopWidthsHeightCaption&Save SQL to File...	PopupMenuMainForm.HelpPopupTabOrderOnClickSaveSQLButtonClick  	TCheckBoxLiveResultCheckBoxTag� Left� TopWidth]Height	AlignmenttaLeftJustifyCaptionLive Result Set	PopupMenuMainForm.HelpPopupTabOrderOnClickLiveResultCheckBoxClick  TEditMaxRowCountEditTag� Left�TopWidth3Height	PopupMenuMainForm.HelpPopupTabOrderOnChangeMaxRowCountEditChange
OnKeyPressMaxRowCountEditKeyPress  TButtonPrepareButtonTag� LeftRTopWidthGHeightAnchorsakTopakRight Caption&Prepare	PopupMenuMainForm.HelpPopupTabOrderOnClickPrepareButtonClick  TButtonRunSQLButtonTag� Left�TopWidthCHeightAnchorsakTopakRight Caption&Run SQL	PopupMenuMainForm.HelpPopupTabOrderOnClickRunSQLButtonClick  TMemoSQLMemoTag� LeftTop2Width�HeightAnchorsakLeftakTopakRightakBottom Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCourier New
Font.Style 
ParentFont	PopupMenuMainForm.HelpPopup
ScrollBars
ssVerticalTabOrderOnChangeSQLMemoChange	OnKeyDownSQLMemoKeyDown
OnKeyPressSQLMemoKeyPressOnKeyUpSQLMemoKeyUpOnMouseDownSQLMemoMouseDown	OnMouseUpSQLMemoMouseUp  	TCheckBoxGeneratePlanCheckBoxTag<Left�TopWidthXHeight	AlignmenttaLeftJustifyCaptionGenerate Plan	PopupMenuMainForm.HelpPopupTabOrderOnClickGeneratePlanCheckBoxClick  TEditRowEditTag� Left(TopHWidthAHeightTabStopAnchorsakRightakBottom Color	clBtnFace	PopupMenuMainForm.HelpPopupReadOnly	TabOrder  TEdit
ColumnEditTag� Left�TopHWidthAHeightTabStopAnchorsakRightakBottom Color	clBtnFace	PopupMenuMainForm.HelpPopupReadOnly	TabOrder	   	TTabSheet	DataSheetTag� CaptionBrowse &Data TLabelLabel1TagLeftTopDWidthlHeightAnchorsakLeftakBottom AutoSizeCaptionyIf the current result set contains BLOB fields, simply double-click on the field to view and/or modify the field contents	PopupMenuMainForm.HelpPopupWordWrap	  TButtonSaveResultSetButtonTag� Left8TopGWidth� HeightAnchorsakRightakBottom CaptionSave Result Set to Table...Enabled	PopupMenuMainForm.HelpPopupTabOrder OnClickSaveResultSetButtonClick  TDBISAMDBGrid	QueryGridTag� Left
Top0Width�HeightAnchorsakLeftakTopakRightakBottom Ctl3D	
DataSourceQuerySourceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style Options	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDelete ParentCtl3D
ParentFont	PopupMenuMainForm.HelpPopupTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style OnCellClickQueryGridCellClick
OnColEnterQueryGridColEnter
FitColumns  TButtonSelectFieldsButtonTag� LeftTop	Width� HeightCaptionSelect Visible Fields...Enabled	PopupMenuMainForm.HelpPopupTabOrderOnClickSelectFieldsButtonClick  	TCheckBoxCopyOnAppendCheckBoxTag� LeftdTopWidthjHeightAnchorsakTopakRight CaptionCopy On Append	PopupMenuMainForm.HelpPopupTabOrderOnClickCopyOnAppendCheckBoxClick  TDBNavigatorQueryNavigatorLeft�Top	WidthHeightHintData Navigator|
DataSourceQuerySourceAnchorsakTopakRight Ctl3DParentCtl3DTabOrder   	TTabSheet	PlanSheetTag=CaptionPl&an
ImageIndex TMemoPlanMemoTag=LeftTopWidth�HeightHAnchorsakLeftakTopakRightakBottom Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCourier New
Font.Style 
ParentFont	PopupMenuMainForm.HelpPopupReadOnly	
ScrollBars
ssVerticalTabOrder OnChangeSQLMemoChange     TDataSourceQuerySourceDataSetInteractiveQueryLeftTop�   TDBISAMQueryInteractiveQueryAutoDisplayLabelsCopyOnAppendEngineVersion4.20 Build 3
ParamCheckMaxRowCount�Params OnQueryProgressInteractiveQueryQueryProgressOnSaveProgressInteractiveQuerySaveProgressBeforeExecuteInteractiveQueryBeforeExecuteAfterExecuteInteractiveQueryAfterExecuteOnQueryErrorInteractiveQueryQueryError
OnDataLostInteractiveQueryDataLostLeft&Top�   TSaveDialog
SaveDialog
DefaultExtsqlFilterSQL Files|*.sqlOptionsofOverwritePromptofHideReadOnly TitleEnter a name for the SQL fileLeftHTop�   TOpenDialog
OpenDialog
DefaultExtsqlFilterSQL Files|*.sqlTitleSelect a SQL file to loadLefthTop�    