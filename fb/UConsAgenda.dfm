?
 TFCONSAGENDA 0g  TPF0TfConsAgendafConsAgendaLeftTopBorderIconsbiSystemMenu BorderStylebsSingleCaptionAgendaClientHeightClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight TPanelPanel1Left Top WidthHeightAlignalClient
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder  TPanelPanel5LeftTopWidth Height? AlignalTop
BevelOuter	bvLoweredTabOrder  TRxLabelRxLabel1LeftTopWidth.HeightCaptionDt.Inicial:  TRxLabelRxLabel2Left? TopWidth)HeightCaption	Dt.Final:  TShapeShape1Left?Top? WidthHeightBrush.ColorclTeal  TLabelLabel5LeftTop? Width4HeightCaption
Concluidos  	TDateEdit	DateEdit2Left@TopWidthkHeight	NumGlyphsTabOrder   	TDateEdit	DateEdit3Left? TopWidthkHeight	NumGlyphsTabOrder  TBitBtnBitBtn1LeftUTopWidthTHeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height?	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtn1Click
Glyph.Data
z  v  BMv      v   (                                    ?  ?   ?? ?   ? ? ??   ???   ?  ?   ?? ?   ? ? ??  ??? 333333333333333?3333330 ?????37w 0  330 w?ww?37w???333ws3?33?࿿ 33 w?3ws?3w?????33 w?3????w࿿   33w?3www?????????w?????sw??    3?w?wwww3w ?3333ws?s333?30 3333 37w3333w3333333 3333333w333333333333333?3333330 3333337w3333330 3333337w3333333333333333	NumGlyphs  	TSMDBGrid	SMDBGrid1LeftTopWidth?Height? 
DataSource
dsConsultaOptions	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit ReadOnly	TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height?TitleFont.NameMS Sans SerifTitleFont.Style 
OnDblClickSMDBGrid1DblClickFlatBandsFont.CharsetDEFAULT_CHARSETBandsFont.ColorclWindowTextBandsFont.Height?BandsFont.NameMS Sans SerifBandsFont.Style 	Groupings GridStyle.StylegsCustomGridStyle.OddColorclWindowGridStyle.EvenColorclWindowTitleHeight.PixelCountFooterColor	clBtnFace	ExOptionseoENTERlikeTABeoKeepSelectioneoStandardPopupeoBLOBEditoreoTitleWordWrapeoShowFilterBar OnGetCellParamsSMDBGrid1GetCellParamsRegistryKeySoftware\ScalabiumRegistrySectionSMDBGridWidthOfIndicatorDefaultRowHeight
ScrollBarsssHorizontalColCountRowCountColumns	AlignmenttaCenterExpanded	FieldNameDtAgendaTitle.AlignmenttaCenterTitle.CaptionDataWidth]Visible	 Expanded	FieldName
NomePessoaTitle.AlignmenttaCenterTitle.CaptionNomeWidthRVisible	     TRzPageControlRzPageControl1Left Top? WidthHeight
ActivePage	TabSheet1BackgroundColor	clBtnFaceParentBackgroundColorParentColorTabIndex TabOrderFixedDimension TRzTabSheet	TabSheet1Caption   Observação TDBMemoDBMemo1LeftTopWidth?Height? 	DataFieldObs
DataSource
dsConsultaReadOnly	
ScrollBars
ssVerticalTabOrder    TRzTabSheet	TabSheet2CaptionPauta TDBMemoDBMemo2LeftTopWidth?Height? 	DataFieldPauta
DataSource
dsConsultaReadOnly	
ScrollBars
ssVerticalTabOrder    TRzTabSheet	TabSheet3Caption   Decisão TDBMemoDBMemo3LeftTopWidth?Height? 	DataFieldPauta
DataSource
dsConsultaReadOnly	
ScrollBars
ssVerticalTabOrder    TRzTabSheet	TabSheet4Caption
   Pendência TDBMemoDBMemo4LeftTopWidth?Height? 	DataField   Pendências
DataSource
dsConsultaReadOnly	
ScrollBars
ssVerticalTabOrder    TRzTabSheet	TabSheet5CaptionOutros TLabelLabel1LeftTop3Width>HeightCaptionDt. Cadastro:  TDBTextDBText1LeftGTop3WidthAHeight	DataField
DtCadastro
DataSource
dsConsulta  TLabelLabel2Left'TopWidthHeightCaptionNome:  TDBTextDBText2LeftGTopWidthzHeight	DataField
NomePessoa
DataSource
dsConsulta  TLabelLabel3LeftTopFWidth;HeightCaptionHr.Cadastro:  TDBTextDBText3LeftGTopFWidthAHeight	DataField
HrCadastro
DataSource
dsConsulta  TLabelLabel4LeftTopfWidth'HeightCaption	   Usuário:  TDBTextDBText4LeftGTopfWidthAHeight	DataFieldUsuario
DataSource
dsConsulta     TQuery	qConsultaDatabaseNameTabelasSQL.Stringss   SELECT Codigo, DtAgenda, Obs, Pauta, Decisões, Pendências, NomePessoa, Usuario, DtCadastro, HrCadastro, ConcluidoFROM "dbAgenda.DB" Dbagenda+WHERE  (DtAgenda BETWEEN :Data1 AND :Data2)ORDER BY DtAgenda, Codigo  LeftrTopb	ParamDataDataTypeftDateNameData1	ParamType	ptUnknown DataTypeftDateNameData2	ParamType	ptUnknown   TIntegerFieldqConsultaCodigo	FieldNameCodigoOriginTABELAS."dbAgenda.DB".Codigo  
TDateFieldqConsultaDtAgenda	FieldNameDtAgendaOriginTABELAS."dbAgenda.DB".DtAgenda  
TMemoFieldqConsultaObs	FieldNameObsOriginTABELAS."dbAgenda.DB".ObsBlobTypeftMemoSize  
TMemoFieldqConsultaPauta	FieldNamePautaOriginTABELAS."dbAgenda.DB".PautaBlobTypeftMemoSize  
TMemoFieldqConsultaDecises	FieldName	   DecisõesOrigin   TABELAS."dbAgenda.DB".Decis§esBlobTypeftMemoSize  
TMemoFieldqConsultaPendncias	FieldName   PendênciasOrigin!   TABELAS."dbAgenda.DB".PendÛnciasBlobTypeftMemoSize  TStringFieldqConsultaNomePessoa	FieldName
NomePessoaOrigin TABELAS."dbAgenda.DB".NomePessoaSize(  TStringFieldqConsultaUsuario	FieldNameUsuarioOriginTABELAS."dbAgenda.DB".UsuarioSize  
TDateFieldqConsultaDtCadastro	FieldName
DtCadastroOrigin TABELAS."dbAgenda.DB".DtCadastro  
TTimeFieldqConsultaHrCadastro	FieldName
HrCadastroOrigin TABELAS."dbAgenda.DB".HrCadastro  TBooleanFieldqConsultaConcluido	FieldName	ConcluidoOriginTABELAS."dbAgenda.DB".Concluido   TDataSource
dsConsultaDataSet	qConsultaLeft?Topb   