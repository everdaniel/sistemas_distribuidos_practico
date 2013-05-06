object frmPrincipal: TfrmPrincipal
  Left = 210
  Top = 186
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Aplicaci'#243'n Master'
  ClientHeight = 446
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 413
    Width = 632
    Height = 33
    Align = alBottom
    TabOrder = 0
    object btnCerrar: TButton
      Left = 552
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 0
      OnClick = btnCerrarClick
    end
    object btnIniciarServer: TBitBtn
      Left = 6
      Top = 4
      Width = 115
      Height = 25
      Caption = 'Obtener archivo'
      TabOrder = 1
      OnClick = btnIniciarServerClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFE2E2E2
        CBCBCBC9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C935803C3079352B71
        30266B2AE2E2E2FFFFFFFFFFFFCBCBCBF9F9F9FCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFC3D8B4481C5877CC2822C7432CCCCCCFFFFFFFEFEFEC9C9C9
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC45964D88C99082C6
        8A448D4AA6B7A8FFFFFFFEFEFEC9C9C9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFB
        FBFB83C48A57AB616AB47390CE978ACB916AB070398240699E6DFEFEFEC9C9C9
        FCFCFCFCFCFCFCFCFCFCFCFCFBFBFBFBFBFBF6F8F770BC7871BC7B96D29F91CF
        9961AA69529458F9FBF9FEFEFEC9C9C9FCFCFCFCFCFCFCFCFCFCFCFCFBFBFBFB
        FBFBFBFBFBFAFAFA78C18073BE7C6EB9786CB073C9C9C9FEFEFEFEFEFEC9C9C9
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBF9F9F97DC4867CC1
        84FCFCFCC9C9C9FEFEFEFEFEFEC9C9C9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFAFAFAF9F9F9F6F6F6F6F6F6FCFCFCC9C9C9FEFEFEFEFEFEC9C9C9
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBF8F8F8F6F6F6F3F3F3F2F2
        F2FCFCFCC9C9C9FEFEFEFEFEFEC9C9C9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFB
        FBFBF8F8F8F5F5F5F2F2F2EFEFEFEDEDEDFCFCFCC9C9C9FEFEFEFEFEFEC9C9C9
        FCFCFCFBFBFBFCFCFCFCFCFCFBFBFBF8F8F8F5F5F5F1F1F1ECECECEAEAEAE6E6
        E6FCFCFCC9C9C9FEFEFEFEFEFEC9C9C9FCFCFCF9F9F9F9F9F9F9F9F9F7F7F7F6
        F6F6F2F2F2EBEBEBFCFCFCFCFCFCFCFCFCFCFCFCC9C9C9FEFEFEFEFEFEC9C9C9
        FCFCFCF7F7F7F9F9F9F7F7F7F7F7F7F3F3F3F0F0F0EAEAEAFCFCFCF6F6F6F4F4
        F4C5C5C5DFDFDFFFFFFFFFFFFFC9C9C9FBFBFBF4F4F4F5F5F5F5F5F5F5F5F5F1
        F1F1EFEFEFE9E9E9FCFCFCE7E7E7C2C2C2DFDFDFFDFDFDFFFFFFFFFFFFCCCCCC
        F8F8F8FBFBFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF8F8F8C2C2C2DFDF
        DFFDFDFDFFFFFFFFFFFFFFFFFFE3E3E3CCCCCCC9C9C9C9C9C9C9C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C9C9DFDFDFFDFDFDFFFFFFFFFFFFFFFFFF}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 69
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 217
      Height = 18
      Caption = 'Par'#225'metros de Configuraci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 26
      Width = 41
      Height = 13
      Caption = 'Puerto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 66
      Top = 26
      Width = 104
      Height = 13
      Caption = 'Directorio destino:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtPuerto: TEdit
      Left = 4
      Top = 40
      Width = 59
      Height = 21
      TabOrder = 0
      Text = '7001'
    end
    object edtDirectorioDestino: TEdit
      Left = 66
      Top = 40
      Width = 241
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object btnBuscarDirectorio: TBitBtn
      Left = 308
      Top = 40
      Width = 21
      Height = 21
      TabOrder = 2
      OnClick = btnBuscarDirectorioClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFDE6EEF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFC6494BA2267
        9D81A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFBFD6F9BC1558DBC89B5DD185F97FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD7AA4CA6497C59DC1E46699
        C73071A4FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE8CFB9DAB292D3A580D0A07CD2
        A684AEA09975A2CCABCBE876A4CE407BAEDEE8F0FFFFFFFFFFFFFFFFFFFEFEFE
        E8C9AFE8C9AEF5E1CDF7E5D3F7E5D1F3DDC8DFBA9C3D7F3E2C73312B6F3BE0EA
        F2FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7EDD0B7F8E8D9F5DEC8F3D8BDF3D6BBF4
        DBC2F7E4D239864054A9702E7533FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECEB1
        F7E7D7F6E1CCF4DBC2F4DAC0F3D8BD61A862489A5051A06260B27E4493532F78
        35307435FFFFFFFFFFFFFFFFFFF0CEAEF9ECDFF5DFC8F5DDC6F4DCC3F4DAC156
        AD5F79C49C73BF946CBA8C65B6845EB07B317B37FFFFFFFFFFFFFFFFFFF4D3B4
        F9EDE1F6E1CCF5DFC9F5DEC7F4DCC469BB6E58B06164B57878C39A58A7693F8E
        46468E4CFFFFFFFFFFFFFFFFFFF7DBC0F9EBDEF7E7D6F6E1CCF5E0CAF5DEC8F5
        DDC5F6E1CB59B36382CAA74EA256FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE9D7
        F8E2CCFAEEE3F7E7D6F6E2CEF6E1CBF6E3D0F9EADD69BD705BB5655BAF64FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBE3CEF9E2CDFAECDEF9EEE2F9EDE2F8
        E9DAF0D5BDECCFB6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFEFCEAD9F9DDC2F6D6B8F4D3B4F2D4B7F4E0CDFEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object pgPrincipal: TPageControl
    Left = 0
    Top = 69
    Width = 632
    Height = 344
    ActivePage = tsArchivos
    Align = alClient
    TabOrder = 2
    object tsArchivos: TTabSheet
      Caption = 'Archivos disponibles'
      object JvDBUltimGrid1: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 624
        Height = 316
        Align = alClient
        DataSource = DSArchivos
        ParentColor = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AlternateRowColor = cl3DLight
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Color = clWhite
            Expanded = False
            FieldName = 'nombre_archivo'
            Title.Alignment = taCenter
            Title.Caption = 'Nombre del Archivo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 582
            Visible = True
          end>
      end
    end
  end
  object tcpClient: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 0
    Left = 370
    Top = 117
  end
  object tcpServer: TIdTCPServer
    Bindings = <
      item
        IP = '192.168.1.167'
        Port = 7001
      end>
    CommandHandlers = <>
    DefaultPort = 0
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnExecute = tcpServerExecute
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 400
    Top = 117
  end
  object tblArchivos: TJvMemoryData
    FieldDefs = <
      item
        Name = 'ip_servidor'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'nombre_archivo'
        DataType = ftString
        Size = 200
      end>
    AfterOpen = tblArchivosAfterOpen
    Left = 252
    Top = 109
    object tblArchivosip_servidor: TStringField
      FieldName = 'ip_servidor'
      Size = 120
    end
    object tblArchivosnombre_archivo: TStringField
      FieldName = 'nombre_archivo'
      Size = 200
    end
  end
  object DSArchivos: TJvDataSource
    DataSet = tblArchivos
    Left = 252
    Top = 139
  end
  object dialogDirectorio: TJvBrowseForFolderDialog
    Options = [odOnlyDirectory, odStatusAvailable, odNewDialogStyle]
    Left = 430
    Top = 117
  end
end
