object dmDatabase: TdmDatabase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 439
  Top = 238
  Height = 225
  Width = 242
  object scoDados: TSQLConnection
    ConnectionName = 'SSBasico'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=localhost:D:\Fontes\$Servisoft\Bases\SSBasico\FB\SSBASI' +
        'CO.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 96
    Top = 64
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 160
    Top = 64
  end
  object sdsExec: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = scoDados
    Left = 96
    Top = 120
  end
end
