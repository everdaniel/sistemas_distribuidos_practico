object frmPrincipal: TfrmPrincipal
  Left = 229
  Top = 195
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Servidor de Archivos'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 69
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 313
      Height = 18
      Caption = 'Par'#225'metros de Configuraci'#243'n del Servidor'
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
      Width = 128
      Height = 13
      Caption = 'Directorio a compartir:'
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
      Text = '7000'
      OnKeyPress = edtPuertoKeyPress
    end
    object edtDirectorioCompartido: TEdit
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
  object Panel2: TPanel
    Left = 0
    Top = 413
    Width = 632
    Height = 33
    Align = alBottom
    TabOrder = 1
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
      Left = 4
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Iniciar Servidor'
      TabOrder = 1
      OnClick = btnIniciarServerClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FCF9F8C29173
        A5603BFCFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCDA07DBF875CB97E56A8653DD3B2A3E0C9C0E7D6D0F1
        E8E6DAD9D89090907474747070706B6B6B676767636363787878C58A5DC69268
        CDA280C59670B67B53AB6A46A35E3D9C5235955947C4C0BFD9D4D3D4CFCED3CE
        CDD3CECDE8E5E5646464FDFCFBC78E63D1A683CC9F7BCB9E7BC79974C3926CBE
        8D65A86945AE887BBDB5B3B9B1B0B9B1AEB7AFAED3CECD686868FFFFFFE8D0BD
        D0A17CD7AE8FC9976FC38F66BD885CC08C64BC886184533EBAB1B0BBB4B2BAB2
        B1B9B1AFD4CFCE6D6D6DFFFFFFF2E3D7D7A682DCB699D0A17DCB9A73CFA482C7
        9974896C58878787787675BDB6B4BBB4B3BBB3B1D4D0CF737373FFFFFFF8ECE5
        DDAE8CE2BEA4D8AB89D9B394CF9F7AA47A5B939393A9A9A9656464BDB7B53BA1
        42379437D6D1D0787878FFFFFFFCF6F2E3B493E8C6ADE3C0A6DBB08FB58F74D7
        C9BF989898757474C0BAB9C1BAB9A0C8A450A956D7D3D17E7E7EFFFFFFFEFEFD
        EAC4AAE8C0A3E5BFA3B59D8BAEAEAEA6A6A6D9D8D8C5BEBDC4BEBCC3BCBBC1BB
        B9C0B9B8D7D3D3848484FFFFFFFFFFFFFEFCFBF0D2BDCFB19CB7B7B7BCBCBCAC
        ACACDDDCDCC7C1C09291918F8F8F8D8D8D8A8A8AD9D5D48B8B8BFFFFFFFFFFFF
        FFFFFFFFFFFFFCF7F3AEAEAEB9B9B9E1E1E1DDDDDDC8C3C2C8C2C1C6C1BFC5BF
        BEC3BDBBDAD6D5919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBE9E9E9E9
        E9E9E2E1E1CBC6C4989797969595949393929191DBD7D6989898FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF1F1F1D0D0D0DFDFDFEAEAEACFCAC9CBC6C5CAC4C3C8C3
        C1C7C1C1DCD9D89E9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDC
        DCDCDCDCDCE6E3E3E1DEDCDFDCDCDFDCDBDEDBDBEEECECA5A5A5FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFC9C9C9C4C4C4C0C0C0BBBB
        BBB6B6B6B0B0B0C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnDetenerServer: TBitBtn
      Left = 110
      Top = 4
      Width = 117
      Height = 25
      Caption = 'Detener Servidor'
      TabOrder = 2
      OnClick = btnDetenerServerClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94AFE3225CC10442
        BC1E59C086A6DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB90909074747470
        70706B6B6B405F952664C72177E60579EA0164DD064FBD86A6DDFFFFFFFFFFFF
        DEDEDEA1A1A1A3A3A3C6C5C4D9D4D3D4CFCED3CECD1A54BB639DF4187FFF0076
        F80076EE0368E11D58C0FFFFFFB0B0B0B3B3B3D4D4D4E1DFDFC5BFBDBDB5B3B9
        B1B0B9B1AE0542BCAECDFEFFFFFFFFFFFFFFFFFF187FEF0442BCFFFFFFA2A2A2
        F0F0F0E0E0E0D4D2D2BEB6B5BCB5B4BBB4B2BAB2B11B53B88DB5F64D92FF1177
        FF2186FF408AEB235CC2FFFFFFA8A8A8EAEAEADDDDDDD5D4D3C0B9B7BEB7B6BD
        B6B4BBB4B37288BA3C75D18DB5F7B8D6FE72A8F52F6CCB93AEE1FFFFFFAFAFAF
        EBEBEBDDDDDDD7D5D5C1BBB9C0B9B8BEB8B63BA1423794377F98CA1A52B80442
        BC1F5AC088A7DEFFFFFFFFFFFFB5B5B5ECECECDEDEDED9D8D8C3BDBBC2BBBAC1
        BAB9A0C8A450A956D7D3D17E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB
        ECECECDFDFDFDAD9D9C6BFBEC4BEBCC3BCBBC1BBB9C0B9B8D7D3D3848484FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0ECECECE0E0E0DDDCDCC7C1C09291918F
        8F8F8D8D8D8A8A8AD9D5D48B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6
        EFEFEFE1E1E1DDDDDDC8C3C2C8C2C1C6C1BFC5BFBEC3BDBBDAD6D5919191FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBE9E9E9E9E9E9E2E1E1CBC6C498979796
        9595949393929191DBD7D6989898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1
        D0D0D0DFDFDFEAEAEACFCAC9CBC6C5CAC4C3C8C3C1C7C1C1DCD9D89E9E9EFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDCDCDCDCDCDCE6E3E3E1DEDCDF
        DCDCDFDCDBDEDBDBEEECECA5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDFDFDFC9C9C9C4C4C4C0C0C0BBBBBBB6B6B6B0B0B0C7C7C7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object pgPrincipal: TPageControl
    Left = 0
    Top = 69
    Width = 632
    Height = 344
    ActivePage = tsLog
    Align = alClient
    TabOrder = 2
    object tsArchivos: TTabSheet
      Caption = 'Archivos compartidos'
      object lbArchivos: TListBox
        Left = 0
        Top = 65
        Width = 624
        Height = 251
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 624
        Height = 65
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 1
        object Label5: TLabel
          Left = 4
          Top = 4
          Width = 264
          Height = 18
          Caption = 'Par'#225'metros de la Aplicaci'#243'n Master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGradientActiveCaption
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 120
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
        object Label7: TLabel
          Left = 4
          Top = 26
          Width = 70
          Height = 13
          Caption = 'Direcci'#243'n IP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edtAMPuerto: TEdit
          Left = 120
          Top = 40
          Width = 59
          Height = 21
          TabOrder = 0
          Text = '7001'
          OnKeyPress = edtAMPuertoKeyPress
        end
        object edtAMIp: TJvIPAddress
          Left = 4
          Top = 40
          Width = 113
          Height = 21
          Address = -1062731353
          AddressValues.Address = -1062731353
          AddressValues.Value1 = 192
          AddressValues.Value2 = 168
          AddressValues.Value3 = 1
          AddressValues.Value4 = 167
          ParentColor = False
          TabOrder = 1
          Text = '192.168.1.167'
        end
      end
    end
    object tsLog: TTabSheet
      Caption = 'Log del Servidor'
      ImageIndex = 1
      object memLog: TMemo
        Left = 0
        Top = 0
        Width = 624
        Height = 316
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object timerPrincipal: TTimer
    Interval = 60000
    OnTimer = timerPrincipalTimer
    Left = 428
    Top = 138
  end
  object tcpServer: TIdTCPServer
    Bindings = <
      item
        IP = '0.0.0.0'
        Port = 7000
      end>
    CommandHandlers = <>
    DefaultPort = 0
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnExecute = tcpServerExecute
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 458
    Top = 138
  end
  object dialogDirectorio: TJvBrowseForFolderDialog
    Options = [odOnlyDirectory, odStatusAvailable, odNewDialogStyle]
    Left = 488
    Top = 139
  end
  object tcpClient: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 0
    Left = 458
    Top = 171
  end
end
