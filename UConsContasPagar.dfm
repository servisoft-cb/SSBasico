�
 TFCONSCONTASPAGAR 0;$  TPF0TfConsContasPagarfConsContasPagarLeft=TopyBorderIconsbiSystemMenu BorderStylebsSingleCaption4   Consulta Contas a Pagar  (Pagamentos / Devoluções)ClientHeight'ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	OnClose	FormCloseOnCreate
FormCreate	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TPanelPanel5Left Top WidthHeightVAlignalTopTabOrder  TLabelLabel1LeftTop Width9HeightCaptionFornecedor:  TLabelLabel27Left%Top
WidthHeightCaptionFilial:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel2Left�Top!Width=HeightCaptionVecto.Inicial:  TLabelLabel3Left)Top!Width8HeightCaptionVecto.Final:  TLabelLabel7Left�Top7Width8HeightCaption   Emissão Ini:  TLabelLabel8Left&Top7Width;HeightCaption   Emissão Fin:  TLabelLabel22Left� Top7Width;HeightCaptionOrdenar por:  TLabelLabel6Left�Top
Width@HeightCaptionPagto. Inicial:  TLabelLabel9Left&Top
Width;HeightCaptionPagto. Final:  TLabelLabel10Left$Top8WidthHeightCaptionTipo:  TRxSpeedButtonRxSpeedButton1Left�TopWidthLHeightHint$   Imprime relatório do Contas a PagarCaptionImprimirFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style LayoutblGlyphLeft
ParentFontOnClickRxSpeedButton1Click  TRxDBLookupComboRxDBLookupCombo1Left=TopWidthCHeightHint'Procura a conta pelo nome do fornecedorDropDownCountLookupFieldCodFornLookupDisplayNomeFornLookupSourceDM1.dsFornecedoresParentShowHintShowHint	TabOrder OnEnterRxDBLookupCombo1Enter  TRxDBLookupComboRxDBLookupCombo2Left=TopWidthCHeightDropDownCountLookupFieldCodigoLookupDisplayEmpresaLookupSourceDM1.dsFilialTabOrder  TBitBtnBitBtn7Left�TopWidthLHeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnClickBitBtn7Click  	TDateEdit	DateEdit1Left�TopWidth_Height	NumGlyphsStartOfWeekSunTabOrder  	TDateEdit	DateEdit2LeftbTopWidth_Height	NumGlyphsStartOfWeekSunTabOrder  	TDateEdit	DateEdit3Left�Top1Width_Height	NumGlyphsStartOfWeekSunTabOrder  	TDateEdit	DateEdit4LeftbTop1Width_Height	NumGlyphsStartOfWeekSunTabOrder  	TComboBox	ComboBox2Left� Top/Width� HeightStylecsDropDownList
ItemHeight	ItemIndex TabOrderText   Data Pagamento / DevoluçãoItems.Strings   Data Pagamento / DevoluçãoData Vencimento   Data Emissão
Fornecedor   Nº Duplicata    	TDateEdit	DateEdit5Left�TopWidth_Height	NumGlyphsStartOfWeekSunTabOrder  	TDateEdit	DateEdit6LeftbTopWidth_Height	NumGlyphsStartOfWeekSunTabOrder	  	TComboBox	ComboBox1Left=Top0WidthSHeightStylecsDropDownList
ItemHeight	ItemIndex TabOrder
Text	PagamentoItems.Strings	Pagamento   Devolução   TBitBtnBitBtn4Left�Top:WidthLHeightHintFecha a janela atualCaptionFecharFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontParentShowHintShowHint	TabOrderOnClickBitBtn4Click	NumGlyphs   TPanelPanel3Left TopWidthHeight AlignalBottomColorclSilverTabOrder
DesignSize   TLabelLabel15LeftqTopWidthHeightAnchorsakTopakRight Caption0,00Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel4Left6TopWidth9HeightAnchorsakTopakRight CaptionVlr. Total:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TBitBtnBitBtn1Left�TopWidthKHeightAnchorsakTopakRight Caption
RecalcularFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder OnClickBitBtn1Click   	TSMDBGrid	SMDBGrid1Left TopVWidthHeight�AlignalClient
DataSourcedsqParcelasOptions	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExitdgMultiSelect ReadOnly	TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style FlatBandsFont.CharsetDEFAULT_CHARSETBandsFont.ColorclWindowTextBandsFont.Height�BandsFont.NameMS Sans SerifBandsFont.Style 	Groupings GridStyle.StylegsCustomGridStyle.OddColorclWindowGridStyle.EvenColorclWindowTitleHeight.PixelCountFooterColor	clBtnFace	ExOptionseoCheckBoxSelecteoENTERlikeTABeoKeepSelectioneoStandardPopupeoBLOBEditoreoTitleWordWrapeoShowFilterBar RegistryKeySoftware\ScalabiumRegistrySectionSMDBGridWidthOfIndicatorDefaultRowHeight
ScrollBarsssHorizontalColCountRowCountColumns	AlignmenttaCenterExpanded	FieldNameFilialTitle.AlignmenttaCenterWidthVisible	 	AlignmenttaCenterExpanded	FieldNameNroDuplicataTitle.AlignmenttaCenterTitle.Caption   Nº DuplicataVisible	 	AlignmenttaCenterExpanded	FieldName
ParcCPagarTitle.AlignmenttaCenterTitle.CaptionParc.Width Visible	 	AlignmenttaCenterExpanded	FieldName	DtUltPgtoTitle.AlignmenttaCenterTitle.CaptionData Pagto. / Devol.WidthcVisible	 Expanded	FieldName
VlrUltPgtoTitle.AlignmenttaCenterTitle.CaptionVlr. PagamentoWidthSVisible	 Expanded	FieldNameVlrDevolucaoTitle.AlignmenttaCenterTitle.Caption   Vlr. DevoluçãoVisible	 	AlignmenttaCenterExpanded	FieldNameDtVencCPagarTitle.AlignmenttaCenterTitle.CaptionData VencimentoVisible	 Expanded	FieldNameNomeFornTitle.AlignmenttaCenterTitle.CaptionNome FornecedorWidth\Visible	 Expanded	FieldName	NomeContaTitle.AlignmenttaCenterTitle.Caption
Nome ContaVisible	 Expanded	FieldNameVlrParcCPagarTitle.AlignmenttaCenterTitle.CaptionValor ParcelaVisible	 	AlignmenttaCenterExpanded	FieldName
NumNotaEntTitle.AlignmenttaCenterTitle.Caption   Nº NotaVisible	 Expanded	FieldNameRestParcelaTitle.AlignmenttaCenterTitle.CaptionVlr. PendenteVisible	 	AlignmenttaCenterExpanded	FieldNameDtGeradoTitle.AlignmenttaCenterTitle.Caption   Data EmissãoVisible	 	AlignmenttaCenterExpanded	FieldName	NumCPagarTitle.AlignmenttaCenterTitle.Caption
   Nº LaçtoVisible	 	AlignmenttaCenterExpanded	FieldNameTipoTitle.AlignmenttaCenterTitle.CaptionTipo (Pagto. / Devol.)Visible	    TQuery	qParcelasDatabaseNameTabelasSQL.Strings�  SELECT Dbcpagar.Filial, Dbcpagar.NumCPagar, Dbfornecedores.NomeForn, Dbcontas.NomeConta, Dbcpagarparchist.VlrUltPgto, Dbcpagarparchist.DtPrevCheque, Dbcpagarparchist.NumCheque, Dbcpagarparc.ParcCPagar, Dbcpagarparc.DtVencCPagar, Dbcpagarparc.VlrParcCPagar, Dbcpagarparc.NumNotaEnt, Dbcpagarparc.CodForn, Dbcpagarparchist.DtUltPgto, Dbcpagarparc.RestParcela, Dbcpagarparc.DtGerado, Dbcpagarparchist.Tipo, Dbcpagarparc.NroDuplicata, Dbcpagarparchist.VlrDevolucaoFROM "dbCPagar.DB" Dbcpagar,   INNER JOIN "dbCPagarParc.DB" Dbcpagarparc0   ON  (Dbcpagar.Filial = Dbcpagarparc.Filial)  7   AND  (Dbcpagar.NumCPagar = Dbcpagarparc.NumCPagar)  0   INNER JOIN "dbFornecedores.DB" Dbfornecedores8   ON  (Dbcpagarparc.CodForn = Dbfornecedores.CodForn)  4   INNER JOIN "dbCPagarParcHist.DB" Dbcpagarparchist8   ON  (Dbcpagarparc.Filial = Dbcpagarparchist.Filial)  ?   AND  (Dbcpagarparc.NumCPagar = Dbcpagarparchist.NumCPagar)  A   AND  (Dbcpagarparc.ParcCPagar = Dbcpagarparchist.ParcCPagar)  )   LEFT OUTER JOIN "dbContas.DB" Dbcontas8   ON  (Dbcpagarparchist.CodConta = Dbcontas.CodConta)   Left� Top�  TIntegerFieldqParcelasFilial	FieldNameFilial  TIntegerFieldqParcelasNumCPagar	FieldName	NumCPagar  TStringFieldqParcelasNomeForn	FieldNameNomeFornSize<  TStringFieldqParcelasNomeConta	FieldName	NomeContaSize(  TFloatFieldqParcelasVlrUltPgto	FieldName
VlrUltPgtoDisplayFormat###,###,##0.00  
TDateFieldqParcelasDtPrevCheque	FieldNameDtPrevCheque  TIntegerFieldqParcelasNumCheque	FieldName	NumCheque  TIntegerFieldqParcelasParcCPagar	FieldName
ParcCPagar  
TDateFieldqParcelasDtVencCPagar	FieldNameDtVencCPagar  TFloatFieldqParcelasVlrParcCPagar	FieldNameVlrParcCPagarDisplayFormat###,###,##0.00  TIntegerFieldqParcelasNumNotaEnt	FieldName
NumNotaEnt  TIntegerFieldqParcelasCodForn	FieldNameCodForn  
TDateFieldqParcelasDtUltPgto	FieldName	DtUltPgto  TFloatFieldqParcelasRestParcela	FieldNameRestParcelaDisplayFormat###,###,##0.00  
TDateFieldqParcelasDtGerado	FieldNameDtGerado  TStringFieldqParcelasTipo	FieldNameTipoSize  TIntegerFieldqParcelasNroDuplicata	FieldNameNroDuplicata  TFloatFieldqParcelasVlrDevolucao	FieldNameVlrDevolucao   TDataSourcedsqParcelasDataSet	qParcelasLeft� Top�    