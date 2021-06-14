unit uIntegracao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  Mask, DBTables, QRCTRLS, ToolEdit, ComCtrls, JPEG, SqlExpr, dbXPress, Variants;

procedure Prc_Gravar_Cliente_FB(Codigo: Integer);
procedure Prc_Excluir_Cliente_FB(Codigo: Integer);

procedure Prc_Gravar_Produto_FB(Codigo: Integer);
procedure Prc_Excluir_Produto_FB(Codigo: Integer);

procedure Prc_Gravar_Setor_FB(Codigo: Integer);
procedure Prc_Excluir_Setor_FB(Codigo: Integer);

procedure Prc_Gravar_Posicao_FB(Codigo: Integer);
procedure Prc_Excluir_Posicao_FB(Codigo: Integer);

procedure Prc_Gravar_Funcionario_FB(Codigo: Integer);
procedure Prc_Excluir_Funcionario_FB(Codigo: Integer);

procedure Prc_Gravar_Grupo_FB(Codigo: Integer);
procedure Prc_Excluir_Grupo_FB(Codigo: Integer);

procedure Prc_Gravar_Estoque_Mov_FB(vFilial, vCodigo: Integer);
procedure Prc_Excluir_Estoque_Mov_FB(vFilial, vCodigo: Integer);

procedure Prc_Gravar_Cor_FB(Codigo: Integer);
procedure Prc_Excluir_Cor_FB(Codigo: Integer);

procedure Prc_Gravar_Vendedor_FB(Codigo: Integer);
procedure Prc_Excluir_Vendedor_FB(Codigo: Integer);

function ProximaSequencia(NomeTabela: String; Filial: Integer): Integer;

implementation

uses
  UDm1, dmdCadCliente, DmdDatabase, dmdCadProduto, dmdCadSetor, dmdCadPosicao,
  dmdCadFuncionario, dmdCadGrupo, UDMEstoque, dmdCadCor, dmdCadVendedor;

function ProximaSequencia(NomeTabela: String; Filial: Integer): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
  Flag: Boolean;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try

    ID.TransactionID := 999;  // --
    ID.IsolationLevel := xilREADCOMMITTED;          //--

    dmDatabase.scoDados.StartTransaction(ID);
    try //--
      sds.SQLConnection := dmDatabase.scoDados; //--

      sds.NoMetadata    := True;
      sds.GetMetadata   := False;

      sds.CommandText :=  ' UPDATE SEQUENCIAL SET NUMREGISTRO = ( SELECT MAX(NUMREGISTRO)+1 '+
                          '                                         FROM SEQUENCIAL         '+
                          '                                        WHERE TABELA = :TABELA   '+
                          '                                          AND FILIAL = :FILIAL)  ' +
                          '  WHERE TABELA = :TABELA   '+
                          '  AND FILIAL = :FILIAL  ';

      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;

      Flag := False;
      While Not Flag do
      Begin
         try
            sds.Close;
            sds.ExecSQL;
            Flag := True;
         Except
           On E: Exception do
              Flag := False;
         End;
      End;

      sds.Close;
      sds.CommandText :=  ' SELECT MAX(NUMREGISTRO) NUMREGISTRO  '+
                          '   FROM SEQUENCIAL                    '+
                          '  WHERE TABELA = :TABELA              '+
                          '    AND FILIAL = :FILIAL              ';

      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;
      sds.Open;

      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;


//      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger+1;

//      if iSeq = 1 then
//        DMEstoque.scoBancoFirebird.ExecuteDirect('INSERT INTO SEQUENCIAL(TABELA, FILIAL , NUMREGISTRO) VALUES( ''' + NomeTabela + ''', ''' + IntToStr(Filial) + ''', ''' + IntToStr(iSeq) + ''' ) ')
//      else
//        DMEstoque.scoBancoFirebird.ExecuteDirect('UPDATE SEQUENCIAL SET NUMREGISTRO = ''' + IntToStr(iSeq) + '''WHERE TABELA = ''' + NomeTabela+''' AND FILIAL = ''' + IntToStr(FILIAL) +'''');

      dmDatabase.scoDados.Commit(ID);

      Result := iSeq;

    except //--
      dmDatabase.scoDados.Rollback(ID);  //--
      raise; //--
    end;   //--

  finally
    FreeAndNil(sds);
  end;
end;


////////////////////////////////////////////////////////////////////
/////////////////////////// CLIENTE ////////////////////////////////
////////////////////////////////////////////////////////////////////

procedure Prc_Gravar_Cliente_FB(Codigo: Integer);
var
  FDmCadCliente: TdmCadCliente;
  x: Integer;
  Vl_Item: Integer;
begin

   // Verifica se o registro já não se encontra no paradox.
  if DM1.tCliente.Locate('Codigo', Codigo, [loCaseInsensitive]) then
  begin
    FDmCadCliente := TdmCadCliente.Create(nil);
    try
         // Localiza a nota fiscal na base do firebird.
      if not FDmCadCliente.LocalizarRegistro(False, Codigo) then
        FDmCadCliente.IncluirRegistro
      else
        FDmCadCliente.EditarRegistro;

         // Inseri a nota do paradox na tabela do firebird.
      for x := 0 to (DM1.tCliente.FieldCount - 1) do
      begin
        if not (DM1.tCliente.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if DM1.tCliente.Fields[x].DataType = ftBoolean then
          begin
            if (not DM1.tCliente.Fields[x].AsBoolean) or (DM1.tCliente.Fields[x].IsNull) then
              FDmCadCliente.cdsCliente.FieldByName(DM1.tCliente.Fields[x].FieldName).AsVariant := 'N'
            else
              FDmCadCliente.cdsCliente.FieldByName(DM1.tCliente.Fields[x].FieldName).AsVariant := 'S'
          end
          else
            FDmCadCliente.cdsCliente.FieldByName(DM1.tCliente.Fields[x].FieldName).AsVariant := DM1.tCliente.Fields[x].Value
        end;
      end;
      FDmCadCliente.cdsCliente.Post;
         //
      FDmCadCliente.GravarRegistro;
         //
    finally
      FreeAndNil(FDmCadCliente);
    end;
  end;
end;

procedure Prc_Excluir_Cliente_FB(Codigo: Integer);
var
  FDmCadCliente: TdmCadCliente;
begin
  FDmCadCliente := TdmCadCliente.Create(nil);
  try
    if FDmCadCliente.LocalizarRegistro(False, Codigo) then
      FDmCadCliente.ExcluirRegistro;
    FDmCadCliente.GravarRegistro;
  finally
    FreeAndNil(FDmCadCliente);
  end;
end;



////////////////////////////////////////////////////////////////////
/////////////////////////// PRODUTO ////////////////////////////////
////////////////////////////////////////////////////////////////////

procedure Prc_Gravar_Produto_FB(Codigo: Integer);
var
  FDmCadProduto: TdmCadProduto;
  x: Integer;
  Vl_Item: Integer;
begin

   // Verifica se o registro já não se encontra no paradox.
  if DM1.tProduto.Locate('Codigo', Codigo, [loCaseInsensitive]) then
  begin
    FDmCadProduto := TdmCadProduto.Create(nil);
    try
         // Localiza a nota fiscal na base do firebird.
      if not FDmCadProduto.LocalizarRegistro(False, Codigo) then
        FDmCadProduto.IncluirRegistro
      else
        FDmCadProduto.EditarRegistro;

         // Inseri a nota do paradox na tabela do firebird.
      for x := 0 to (DM1.tProduto.FieldCount - 1) do
      begin
        if not (DM1.tProduto.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if DM1.tProduto.Fields[x].DataType = ftBoolean then
          begin
            if (not DM1.tProduto.Fields[x].AsBoolean) or (DM1.tProduto.Fields[x].IsNull) then
              FDmCadProduto.cdsProduto.FieldByName(DM1.tProduto.Fields[x].FieldName).AsVariant := 'N'
            else
              FDmCadProduto.cdsProduto.FieldByName(DM1.tProduto.Fields[x].FieldName).AsVariant := 'S'
          end
          else
            FDmCadProduto.cdsProduto.FieldByName(DM1.tProduto.Fields[x].FieldName).AsVariant := DM1.tProduto.Fields[x].Value
        end;
      end;
      FDmCadProduto.cdsProduto.Post;
         //
      FDmCadProduto.GravarRegistro;
         //
    finally
      FreeAndNil(FDmCadProduto);
    end;
  end;
end;

procedure Prc_Excluir_Produto_FB(Codigo: Integer);
var
  FDmCadProduto: TdmCadProduto;
begin
  FDmCadProduto := TdmCadProduto.Create(nil);
  try
    if FDmCadProduto.LocalizarRegistro(False, Codigo) then
      FDmCadProduto.ExcluirRegistro;
    FDmCadProduto.GravarRegistro;
  finally
    FreeAndNil(FDmCadProduto);
  end;
end;




//////////////////////////////////////////////////////////////////
/////////////////////////// SETOR ////////////////////////////////
//////////////////////////////////////////////////////////////////

procedure Prc_Gravar_Setor_FB(Codigo: Integer);
var
  FDmCadSetor: TdmCadSetor;
  x: Integer;
  Vl_Item: Integer;
begin

   // Verifica se o registro já não se encontra no paradox.
  if DM1.tSetor.Locate('Codigo', Codigo, [loCaseInsensitive]) then
  begin
    FDmCadSetor := TdmCadSetor.Create(nil);
    try
         // Localiza a nota fiscal na base do firebird.
      if not FDmCadSetor.LocalizarRegistro(False, Codigo) then
        FDmCadSetor.IncluirRegistro
      else
        FDmCadSetor.EditarRegistro;

         // Inseri a nota do paradox na tabela do firebird.
      for x := 0 to (DM1.tSetor.FieldCount - 1) do
      begin
        if not (DM1.tSetor.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if DM1.tSetor.Fields[x].DataType = ftBoolean then
          begin
            if (not DM1.tSetor.Fields[x].AsBoolean) or (DM1.tSetor.Fields[x].IsNull) then
              FDmCadSetor.cdsSetor.FieldByName(DM1.tSetor.Fields[x].FieldName).AsVariant := 'N'
            else
              FDmCadSetor.cdsSetor.FieldByName(DM1.tSetor.Fields[x].FieldName).AsVariant := 'S'
          end
          else
            FDmCadSetor.cdsSetor.FieldByName(DM1.tSetor.Fields[x].FieldName).AsVariant := DM1.tSetor.Fields[x].Value
        end;
      end;
      FDmCadSetor.cdsSetor.Post;
         //
      FDmCadSetor.GravarRegistro;
         //
    finally
      FreeAndNil(FDmCadSetor);
    end;
  end;
end;

procedure Prc_Excluir_Setor_FB(Codigo: Integer);
var
  FDmCadSetor: TdmCadSetor;
begin
  FDmCadSetor := TdmCadSetor.Create(nil);
  try
    if FDmCadSetor.LocalizarRegistro(False, Codigo) then
      FDmCadSetor.ExcluirRegistro;
    FDmCadSetor.GravarRegistro;
  finally
    FreeAndNil(FDmCadSetor);
  end;
end;





////////////////////////////////////////////////////////////////////
/////////////////////////// Posição ////////////////////////////////
////////////////////////////////////////////////////////////////////

procedure Prc_Gravar_Posicao_FB(Codigo: Integer);
var
  FDmCadPosicao: TdmCadPosicao;
  x: Integer;
  Vl_Item: Integer;
begin

   // Verifica se o registro já não se encontra no paradox.
  if DM1.tPosicao.Locate('Codigo', Codigo, [loCaseInsensitive]) then
  begin
    FDmCadPosicao := TdmCadPosicao.Create(nil);
    try
         // Localiza a nota fiscal na base do firebird.
      if not FDmCadPosicao.LocalizarRegistro(False, Codigo) then
        FDmCadPosicao.IncluirRegistro
      else
        FDmCadPosicao.EditarRegistro;

         // Inseri a nota do paradox na tabela do firebird.
      for x := 0 to (DM1.tPosicao.FieldCount - 1) do
      begin
        if not (DM1.tPosicao.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if DM1.tPosicao.Fields[x].DataType = ftBoolean then
          begin
            if (not DM1.tPosicao.Fields[x].AsBoolean) or (DM1.tPosicao.Fields[x].IsNull) then
              FDmCadPosicao.cdsPosicao.FieldByName(DM1.tPosicao.Fields[x].FieldName).AsVariant := 'N'
            else
              FDmCadPosicao.cdsPosicao.FieldByName(DM1.tPosicao.Fields[x].FieldName).AsVariant := 'S'
          end
          else
            FDmCadPosicao.cdsPosicao.FieldByName(DM1.tPosicao.Fields[x].FieldName).AsVariant := DM1.tPosicao.Fields[x].Value
        end;
      end;
      FDmCadPosicao.cdsPosicao.Post;
         //
      FDmCadPosicao.GravarRegistro;
         //
    finally
      FreeAndNil(FDmCadPosicao);
    end;
  end;
end;

procedure Prc_Excluir_Posicao_FB(Codigo: Integer);
var
  FDmCadPosicao: TdmCadPosicao;
begin
  FDmCadPosicao := TdmCadPosicao.Create(nil);
  try
    if FDmCadPosicao.LocalizarRegistro(False, Codigo) then
      FDmCadPosicao.ExcluirRegistro;
    FDmCadPosicao.GravarRegistro;
  finally
    FreeAndNil(FDmCadPosicao);
  end;
end;




////////////////////////////////////////////////////////////////////////
/////////////////////////// Funcionário ////////////////////////////////
////////////////////////////////////////////////////////////////////////

procedure Prc_Gravar_Funcionario_FB(Codigo: Integer);
var
  FDmCadFuncionario: TdmCadFuncionario;
  x: Integer;
  Vl_Item: Integer;
begin

   // Verifica se o registro já não se encontra no paradox.
  if DM1.tFuncionario.Locate('Codigo', Codigo, [loCaseInsensitive]) then
  begin
    FDmCadFuncionario := TdmCadFuncionario.Create(nil);
    try
         // Localiza a nota fiscal na base do firebird.
      if not FDmCadFuncionario.LocalizarRegistro(False, Codigo) then
        FDmCadFuncionario.IncluirRegistro
      else
        FDmCadFuncionario.EditarRegistro;

         // Inseri a nota do paradox na tabela do firebird.
      for x := 0 to (DM1.tFuncionario.FieldCount - 1) do
      begin
        if not (DM1.tFuncionario.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if DM1.tFuncionario.Fields[x].DataType = ftBoolean then
          begin
            if (not DM1.tFuncionario.Fields[x].AsBoolean) or (DM1.tFuncionario.Fields[x].IsNull) then
              FDmCadFuncionario.cdsFuncionario.FieldByName(DM1.tFuncionario.Fields[x].FieldName).AsVariant := 'N'
            else
              FDmCadFuncionario.cdsFuncionario.FieldByName(DM1.tFuncionario.Fields[x].FieldName).AsVariant := 'S'
          end
          else
            FDmCadFuncionario.cdsFuncionario.FieldByName(DM1.tFuncionario.Fields[x].FieldName).AsVariant := DM1.tFuncionario.Fields[x].Value
        end;
      end;
      FDmCadFuncionario.cdsFuncionario.Post;
         //
      FDmCadFuncionario.GravarRegistro;
         //
    finally
      FreeAndNil(FDmCadFuncionario);
    end;
  end;
end;

procedure Prc_Excluir_Funcionario_FB(Codigo: Integer);
var
  FDmCadFuncionario: TdmCadFuncionario;
begin
  FDmCadFuncionario := TdmCadFuncionario.Create(nil);
  try
    if FDmCadFuncionario.LocalizarRegistro(False, Codigo) then
      FDmCadFuncionario.ExcluirRegistro;
    FDmCadFuncionario.GravarRegistro;
  finally
    FreeAndNil(FDmCadFuncionario);
  end;
end;





//////////////////////////////////////////////////////////////////
/////////////////////////// Grupo ////////////////////////////////
//////////////////////////////////////////////////////////////////

procedure Prc_Gravar_Grupo_FB(Codigo: Integer);
var
  FDmCadGrupo: TdmCadGrupo;
  x: Integer;
  Vl_Item: Integer;
begin

   // Verifica se o registro já não se encontra no paradox.
  if DM1.tGrupo.Locate('Codigo', Codigo, [loCaseInsensitive]) then
  begin
    FDmCadGrupo := TdmCadGrupo.Create(nil);
    try
         // Localiza a nota fiscal na base do firebird.
      if not FDmCadGrupo.LocalizarRegistro(False, Codigo) then
        FDmCadGrupo.IncluirRegistro
      else
        FDmCadGrupo.EditarRegistro;

         // Inseri a nota do paradox na tabela do firebird.
      for x := 0 to (DM1.tGrupo.FieldCount - 1) do
      begin
        if not (DM1.tGrupo.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if DM1.tGrupo.Fields[x].DataType = ftBoolean then
          begin
            if (not DM1.tGrupo.Fields[x].AsBoolean) or (DM1.tGrupo.Fields[x].IsNull) then
              FDmCadGrupo.cdsGrupo.FieldByName(DM1.tGrupo.Fields[x].FieldName).AsVariant := 'N'
            else
              FDmCadGrupo.cdsGrupo.FieldByName(DM1.tGrupo.Fields[x].FieldName).AsVariant := 'S'
          end
          else
            FDmCadGrupo.cdsGrupo.FieldByName(DM1.tGrupo.Fields[x].FieldName).AsVariant := DM1.tGrupo.Fields[x].Value
        end;
      end;
      FDmCadGrupo.cdsGrupo.Post;
         //
      FDmCadGrupo.GravarRegistro;
         //
    finally
      FreeAndNil(FDmCadGrupo);
    end;
  end;
end;

procedure Prc_Excluir_Grupo_FB(Codigo: Integer);
var
  FDmCadGrupo: TdmCadGrupo;
begin
  FDmCadGrupo := TdmCadGrupo.Create(nil);
  try
    if FDmCadGrupo.LocalizarRegistro(False, Codigo) then
      FDmCadGrupo.ExcluirRegistro;
    FDmCadGrupo.GravarRegistro;
  finally
    FreeAndNil(FDmCadGrupo);
  end;
end;





/////////////////////////////////////////////////
///////////////// ESTOQUEMOV ////////////////////
/////////////////////////////////////////////////

procedure Prc_Gravar_Estoque_Mov_FB(vFilial, vCodigo: Integer);
var
  FDmEstoque: TDmEstoque;
  x: Integer;
begin
  // Verifica se o registro já não se encontra no paradox.
  if DM1.tEstoqueMatMov.Locate('Filial;NumMov',VarArrayOf([vFilial,vCodigo]),[loCaseInsensitive]) then
  begin
    FDmEstoque := TDMEstoque.Create(Nil);
    try
       // Localiza a nota fiscal na base do firebird.
       if not FDmEstoque.LocalizarRegistro(False,vFilial,vCodigo) then
         FDmEstoque.IncluirRegistro(vFilial,vCodigo)
       else
         FDmEstoque.EditarRegistro;
       // Insere a nota do paradox na tabela do firebird.
       for x := 0 to (DM1.tEstoqueMatMov.FieldCount-1) do
       begin
         if not (DM1.tEstoqueMatMov.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
         begin
           if DM1.tEstoqueMatMov.Fields[x].FieldName = 'Qtd' then
             FDmEstoque.cdsEstoqueMov.FieldByName(DM1.tEstoqueMatMov.Fields[x].FieldName).AsVariant := StrToFloat(FormatFloat('0.00000',DM1.tEstoqueMatMov.Fields[x].Value))
           else
           if DM1.tEstoqueMatMov.Fields[x].DataType = ftBoolean then
           begin
             if (not DM1.tEstoqueMatMov.Fields[x].AsBoolean) or (DM1.tEstoqueMatMov.Fields[x].IsNull) then
               FDmEstoque.cdsEstoqueMov.FieldByName(DM1.tEstoqueMatMov.Fields[x].FieldName).AsVariant := 'N'
             else
               FDmEstoque.cdsEstoqueMov.FieldByName(DM1.tEstoqueMatMov.Fields[x].FieldName).AsVariant := 'S';
           end
           else
             FDmEstoque.cdsEstoqueMov.FieldByName(DM1.tEstoqueMatMov.Fields[x].FieldName).AsVariant := DM1.tEstoqueMatMov.Fields[x].Value
         end;
       end;
       if (FDmEstoque.cdsEstoqueMovTAMANHO.AsString = '') or (FDmEstoque.cdsEstoqueMovTAMANHO.IsNull) then
         FDmEstoque.cdsEstoqueMovTAMANHO.AsString := '';
       FDmEstoque.cdsEstoqueMov.Post;
       FDmEstoque.GravarRegistro;
    finally
      FreeAndNil(FDmEstoque);
    end;
  end;
end;

procedure Prc_Excluir_Estoque_Mov_FB(vFilial, vCodigo: Integer);
var
  FDmEstoque: TDMEstoque;
begin
  FDmEstoque := TDMEstoque.Create(Nil);
  try
    If FDmEstoque.LocalizarRegistro(False,vFilial,vCodigo) then
      FDmEstoque.ExcluirRegistro;
    FDmEstoque.GravarRegistro;
  finally
    FreeAndNil(FDmEstoque);
  end;
end;






//////////////////////////////////////////////////////////////////
/////////////////////////// Cor ////////////////////////////////
//////////////////////////////////////////////////////////////////

procedure Prc_Gravar_Cor_FB(Codigo: Integer);
var
  FDmCadCor: TdmCadCor;
  x: Integer;
  Vl_Item: Integer;
begin

   // Verifica se o registro já não se encontra no paradox.
  if DM1.tCor.Locate('Codigo', Codigo, [loCaseInsensitive]) then
  begin
    FDmCadCor := TdmCadCor.Create(nil);
    try
         // Localiza a nota fiscal na base do firebird.
      if not FDmCadCor.LocalizarRegistro(False, Codigo) then
        FDmCadCor.IncluirRegistro
      else
        FDmCadCor.EditarRegistro;

         // Inseri a nota do paradox na tabela do firebird.
      for x := 0 to (DM1.tCor.FieldCount - 1) do
      begin
        if not (DM1.tCor.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if DM1.tCor.Fields[x].DataType = ftBoolean then
          begin
            if (not DM1.tCor.Fields[x].AsBoolean) or (DM1.tCor.Fields[x].IsNull) then
              FDmCadCor.cdsCor.FieldByName(DM1.tCor.Fields[x].FieldName).AsVariant := 'N'
            else
              FDmCadCor.cdsCor.FieldByName(DM1.tCor.Fields[x].FieldName).AsVariant := 'S'
          end
          else
            FDmCadCor.cdsCor.FieldByName(DM1.tCor.Fields[x].FieldName).AsVariant := DM1.tCor.Fields[x].Value
        end;
      end;
      FDmCadCor.cdsCor.Post;
         //
      FDmCadCor.GravarRegistro;
         //
    finally
      FreeAndNil(FDmCadCor);
    end;
  end;
end;

procedure Prc_Excluir_Cor_FB(Codigo: Integer);
var
  FDmCadCor: TdmCadCor;
begin
  FDmCadCor := TdmCadCor.Create(nil);
  try
    if FDmCadCor.LocalizarRegistro(False, Codigo) then
      FDmCadCor.ExcluirRegistro;
    FDmCadCor.GravarRegistro;
  finally
    FreeAndNil(FDmCadCor);
  end;
end;




//////////////////////////////////////////////////////////////////
///////////////////////// Vendedor ///////////////////////////////
//////////////////////////////////////////////////////////////////

procedure Prc_Gravar_Vendedor_FB(Codigo: Integer);
var
  FDmCadVendedor: TdmCadVendedor;
  x: Integer;
  Vl_Item: Integer;
begin

   // Verifica se o registro já não se encontra no paradox.
  if DM1.tVendedor.Locate('Codigo', Codigo, [loCaseInsensitive]) then
  begin
    FDmCadVendedor := TdmCadVendedor.Create(nil);
    try
         // Localiza a nota fiscal na base do firebird.
      if not FDmCadVendedor.LocalizarRegistro(False, Codigo) then
        FDmCadVendedor.IncluirRegistro
      else
        FDmCadVendedor.EditarRegistro;

         // Inseri a nota do paradox na tabela do firebird.
      for x := 0 to (DM1.tVendedor.FieldCount - 1) do
      begin
        if not (DM1.tVendedor.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if DM1.tVendedor.Fields[x].DataType = ftBoolean then
          begin
            if (not DM1.tVendedor.Fields[x].AsBoolean) or (DM1.tVendedor.Fields[x].IsNull) then
              FDmCadVendedor.cdsVendedor.FieldByName(DM1.tVendedor.Fields[x].FieldName).AsVariant := 'N'
            else
              FDmCadVendedor.cdsVendedor.FieldByName(DM1.tVendedor.Fields[x].FieldName).AsVariant := 'S'
          end
          else
            FDmCadVendedor.cdsVendedor.FieldByName(DM1.tVendedor.Fields[x].FieldName).AsVariant := DM1.tVendedor.Fields[x].Value
        end;
      end;
      FDmCadVendedor.cdsVendedor.Post;
         //
      FDmCadVendedor.GravarRegistro;
         //
    finally
      FreeAndNil(FDmCadVendedor);
    end;
  end;
end;

procedure Prc_Excluir_Vendedor_FB(Codigo: Integer);
var
  FDmCadVendedor: TdmCadVendedor;
begin
  FDmCadVendedor := TdmCadVendedor.Create(nil);
  try
    if FDmCadVendedor.LocalizarRegistro(False, Codigo) then
      FDmCadVendedor.ExcluirRegistro;
    FDmCadVendedor.GravarRegistro;
  finally
    FreeAndNil(FDmCadVendedor);
  end;
end;


end.

