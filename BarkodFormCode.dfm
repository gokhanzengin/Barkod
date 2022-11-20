object Form1: TForm1
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Barkod Form'
  ClientHeight = 826
  ClientWidth = 1093
  Color = clBtnFace
  DockSite = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1093
    Height = 826
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Barcode Print Form'
      object lblMasterSku: TLabel
        Left = 15
        Top = 139
        Width = 53
        Height = 13
        Caption = 'Master Sku'
      end
      object lblSku: TLabel
        Left = 15
        Top = 166
        Width = 17
        Height = 13
        Caption = 'Sku'
      end
      object lblBakod: TLabel
        Left = 15
        Top = 85
        Width = 39
        Height = 13
        Caption = 'Barcode'
      end
      object lblTipi: TLabel
        Left = 15
        Top = 193
        Width = 24
        Height = 13
        Caption = 'Type'
      end
      object lblAltTipi: TLabel
        Left = 16
        Top = 221
        Width = 45
        Height = 13
        Caption = 'Sub Type'
      end
      object lblCinsi: TLabel
        Left = 15
        Top = 247
        Width = 24
        Height = 13
        Caption = 'Style'
      end
      object lblStyle: TLabel
        Left = 16
        Top = 274
        Width = 66
        Height = 13
        Caption = 'Feather Color'
      end
      object lblRengi: TLabel
        Left = 16
        Top = 301
        Width = 25
        Height = 13
        Caption = 'Color'
      end
      object lblBedenAdi: TLabel
        Left = 16
        Top = 328
        Width = 76
        Height = 13
        Caption = 'Body Size Name'
      end
      object lblBeden: TLabel
        Left = 16
        Top = 112
        Width = 28
        Height = 13
        Caption = 'Model'
      end
      object Label1: TLabel
        Left = 16
        Top = 37
        Width = 75
        Height = 13
        Caption = 'Barcode Search'
      end
      object lblAciklama: TLabel
        Left = 16
        Top = 355
        Width = 56
        Height = 13
        Caption = 'Explanation'
      end
      object R1: TWebImage
        Left = 351
        Top = 82
        Width = 498
        Height = 713
        Cursor = crHandPoint
        Animate = True
        Async = False
        AutoSize = False
        CheckContentLength = True
        WebPicture.Stretch = False
        WebPicture.Frame = 0
        PictureLayout = plStretched
        Color = clNone
        ParentColor = False
        Version = '1.3.0.0'
      end
      object edtBarkod: TEdit
        Left = 97
        Top = 82
        Width = 227
        Height = 21
        Enabled = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
      object edtMasterSku: TEdit
        Left = 97
        Top = 136
        Width = 227
        Height = 21
        Enabled = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
      end
      object edtSku: TEdit
        Left = 97
        Top = 163
        Width = 227
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object edtTipi: TEdit
        Left = 97
        Top = 190
        Width = 227
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object edtAltTipi: TEdit
        Left = 97
        Top = 217
        Width = 227
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object edtCinsi: TEdit
        Left = 97
        Top = 244
        Width = 227
        Height = 21
        Enabled = False
        TabOrder = 5
      end
      object edtStyle: TEdit
        Left = 97
        Top = 271
        Width = 227
        Height = 21
        Enabled = False
        TabOrder = 6
      end
      object edtRengi: TEdit
        Left = 97
        Top = 298
        Width = 227
        Height = 21
        Enabled = False
        TabOrder = 7
      end
      object edtBedenAdi: TEdit
        Left = 97
        Top = 109
        Width = 227
        Height = 21
        Enabled = False
        TabOrder = 8
      end
      object edtBeden: TEdit
        Left = 98
        Top = 325
        Width = 227
        Height = 21
        Enabled = False
        TabOrder = 9
      end
      object btnBarkodBas: TButton
        Left = 328
        Top = 32
        Width = 121
        Height = 25
        Caption = 'Barcode Print'
        TabOrder = 10
        OnClick = btnBarkodBasClick
      end
      object edtBarkodOkut: TEdit
        Left = 97
        Top = 34
        Width = 227
        Height = 21
        TabOrder = 11
        OnKeyDown = edtBarkodOkutKeyDown
      end
      object edtAciklama: TEdit
        Left = 97
        Top = 352
        Width = 228
        Height = 21
        Enabled = False
        TabOrder = 12
      end
      object Button1: TButton
        Left = 455
        Top = 32
        Width = 99
        Height = 25
        Caption = 'Barcode Desing'
        TabOrder = 13
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Product Search Form'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 772
        Width = 1085
        Height = 26
        Align = alBottom
        TabOrder = 0
      end
      object cxStokList: TcxGrid
        Left = 0
        Top = 0
        Width = 1085
        Height = 772
        Align = alClient
        TabOrder = 1
        object vStokList: TcxGridDBTableView
          PopupMenu = popStokList
          Navigator.Buttons.CustomButtons = <>
          FindPanel.DisplayMode = fpdmAlways
          FindPanel.HighlightSearchResults = False
          DataController.DataSource = dsStokArama
          DataController.KeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '##,##'
              Kind = skCount
              Position = spFooter
              Column = vStokListBarkod
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '##,##'
              Kind = skCount
              Column = vStokListBarkod
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.ColumnHeaderHints = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 25
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          object vStokListId: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 40
          end
          object vStokListnewbarkod: TcxGridDBColumn
            Caption = 'New Barcode'
            DataBinding.FieldName = 'newbarkod'
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object vStokListBarkod: TcxGridDBColumn
            Caption = 'Barcode'
            DataBinding.FieldName = 'barkod'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 85
          end
          object vStokListBedenAdi: TcxGridDBColumn
            Caption = 'Model'
            DataBinding.FieldName = 'bedenadi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 90
          end
          object vStokListMasterSku: TcxGridDBColumn
            Caption = 'Master Sku'
            DataBinding.FieldName = 'mastersku'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 95
          end
          object vStokListSku: TcxGridDBColumn
            Caption = 'Sku'
            DataBinding.FieldName = 'sku'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 125
          end
          object vStokListTipi: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'tipi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 65
          end
          object vStokListAltTipi: TcxGridDBColumn
            Caption = 'Sub Type'
            DataBinding.FieldName = 'alttipi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 65
          end
          object vStokListStyle: TcxGridDBColumn
            Caption = 'Feather Color'
            DataBinding.FieldName = 'style'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 80
          end
          object vStokListCinsi: TcxGridDBColumn
            Caption = 'Style'
            DataBinding.FieldName = 'cinsi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 65
          end
          object vStokListRengi: TcxGridDBColumn
            Caption = 'Color'
            DataBinding.FieldName = 'rengi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 150
          end
          object vStokListBeden: TcxGridDBColumn
            Caption = 'Body Size'
            DataBinding.FieldName = 'beden'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 55
          end
          object vStokListAciklama: TcxGridDBColumn
            Caption = 'Explanation'
            DataBinding.FieldName = 'aciklama'
            Options.AutoWidthSizable = False
            Width = 200
          end
        end
        object cxStokListLevel1: TcxGridLevel
          GridView = vStokList
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Barcode Save Form'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 741
        Width = 1085
        Height = 57
        Align = alBottom
        TabOrder = 0
        object lblBarkodKaydet: TLabel
          Left = 32
          Top = 20
          Width = 72
          Height = 13
          Caption = 'Barcode Scan :'
        end
        object Label2: TLabel
          Left = 312
          Top = 20
          Width = 41
          Height = 13
          Caption = 'Box No :'
        end
        object edtBarkodKaydet: TEdit
          Left = 106
          Top = 16
          Width = 154
          Height = 21
          TabOrder = 0
          OnKeyDown = edtBarkodKaydetKeyDown
        end
        object edtKoliNo: TEdit
          Left = 359
          Top = 16
          Width = 66
          Height = 21
          TabOrder = 1
          OnKeyDown = edtBarkodKaydetKeyDown
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1085
        Height = 741
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = popExcel
          Navigator.Buttons.CustomButtons = <>
          FindPanel.DisplayMode = fpdmManual
          DataController.DataSource = dsStokListe
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '##,##'
              Kind = skCount
              Position = spFooter
              Column = cxGridDBColumn2
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '##,##'
              Kind = skCount
              Column = cxGridDBColumn2
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.ColumnHeaderHints = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 25
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 40
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Model'
            DataBinding.FieldName = 'bedenadi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 90
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Barcode'
            DataBinding.FieldName = 'barkod'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 85
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Master Sku'
            DataBinding.FieldName = 'mastersku'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 95
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Sku'
            DataBinding.FieldName = 'sku'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 125
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'tipi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 65
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Sub Type'
            DataBinding.FieldName = 'alttipi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 65
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Feather Color'
            DataBinding.FieldName = 'style'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 80
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Style'
            DataBinding.FieldName = 'cinsi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 65
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Color'
            DataBinding.FieldName = 'rengi'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 65
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Body Size'
            DataBinding.FieldName = 'beden'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 55
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Explanation'
            DataBinding.FieldName = 'aciklama'
            Options.AutoWidthSizable = False
            Width = 150
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Box No'
            DataBinding.FieldName = 'kolino'
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object JdForm: TTabSheet
      Caption = 'JD Aktar'#305'm Form'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 728
        Width = 1085
        Height = 70
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 0
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1085
        Height = 728
        Align = alClient
        TabOrder = 1
        object cxUrtIrsStok: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxUrtIrsStok
        end
      end
    end
  end
  object Connention: TMyConnection
    Database = 'abcderi_urt_22_PlrsGr'
    Username = 'abcderi'
    Server = 'polarisgroup.com.tr'
    Connected = True
    Left = 940
    EncryptedPassword = 'C7FF8BFFAAFFBAFFDCFFB6FFCAFFB1FFA5FF99FF'
  end
  object tblStok: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO irstok'
      
        '  (id, mastersku, sku, newbarkod, barkod, bedenadi, aciklama, re' +
        'ngi, tipi, alttipi, cinsi, style, beden, image)'
      'VALUES'
      
        '  (:id, :mastersku, :sku, :newbarkod, :barkod, :bedenadi, :acikl' +
        'ama, :rengi, :tipi, :alttipi, :cinsi, :style, :beden, :image)')
    SQLDelete.Strings = (
      'DELETE FROM irstok'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE irstok'
      'SET'
      
        '  id = :id, mastersku = :mastersku, sku = :sku, newbarkod = :new' +
        'barkod, barkod = :barkod, bedenadi = :bedenadi, aciklama = :acik' +
        'lama, rengi = :rengi, tipi = :tipi, alttipi = :alttipi, cinsi = ' +
        ':cinsi, style = :style, beden = :beden, image = :image'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, mastersku, sku, newbarkod, barkod, bedenadi, aciklama' +
        ', rengi, tipi, alttipi, cinsi, style, beden, image FROM irstok'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM irstok'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM irstok')
    Connection = Connention
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'irstok'
      ''
      'WHERE'
      'barkod = :prbarkod')
    Options.FieldOrigins = foNone
    Left = 980
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prbarkod'
        Value = nil
      end>
    object tblStokid: TIntegerField
      FieldName = 'id'
    end
    object tblStokmastersku: TStringField
      FieldName = 'mastersku'
      Size = 255
    end
    object tblStoksku: TStringField
      FieldName = 'sku'
      Size = 255
    end
    object tblStoknewbarkod: TStringField
      FieldName = 'newbarkod'
      Size = 255
    end
    object tblStokbarkod: TStringField
      FieldName = 'barkod'
      Size = 255
    end
    object tblStokbedenadi: TStringField
      FieldName = 'bedenadi'
      Size = 255
    end
    object tblStokaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tblStokrengi: TStringField
      FieldName = 'rengi'
      Size = 255
    end
    object tblStoktipi: TStringField
      FieldName = 'tipi'
      Size = 255
    end
    object tblStokalttipi: TStringField
      FieldName = 'alttipi'
      Size = 255
    end
    object tblStokcinsi: TStringField
      FieldName = 'cinsi'
      Size = 255
    end
    object tblStokstyle: TStringField
      FieldName = 'style'
      Size = 255
    end
    object tblStokbeden: TStringField
      FieldName = 'beden'
      Size = 255
    end
    object tblStokimage: TStringField
      FieldName = 'image'
      Size = 255
    end
  end
  object dsStok: TMyDataSource
    DataSet = tblStok
    Left = 1020
  end
  object qDummy: TMyQuery
    Connection = Connention
    Options.FieldOrigins = foNone
    Left = 1052
  end
  object frRapor: TfrxReport
    Version = '6.9.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Varsay'#305'lan'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44828.774981828700000000
    ReportOptions.LastChange = 44828.774981828700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 724
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 788
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'DBStok'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'mastersku=mastersku'
      'sku=sku'
      'newbarkod=newbarkod'
      'barkod=barkod'
      'bedenadi=bedenadi'
      'aciklama=aciklama'
      'rengi=rengi'
      'tipi=tipi'
      'alttipi=alttipi'
      'cinsi=cinsi'
      'style=style'
      'beden=beden'
      'image=image')
    DataSource = dsStok
    BCDToCurrency = False
    Left = 756
  end
  object tblStokArama: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO stok'
      
        '  (id, mastersku, sku, barkod, bedenadi, aciklama, rengi, tipi, ' +
        'alttipi, cinsi, style, beden)'
      'VALUES'
      
        '  (:id, :mastersku, :sku, :barkod, :bedenadi, :aciklama, :rengi,' +
        ' :tipi, :alttipi, :cinsi, :style, :beden)')
    SQLDelete.Strings = (
      'DELETE FROM stok'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE stok'
      'SET'
      
        '  id = :id, mastersku = :mastersku, sku = :sku, barkod = :barkod' +
        ', bedenadi = :bedenadi, aciklama = :aciklama, rengi = :rengi, ti' +
        'pi = :tipi, alttipi = :alttipi, cinsi = :cinsi, style = :style, ' +
        'beden = :beden'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, mastersku, sku, barkod, bedenadi, aciklama, rengi, ti' +
        'pi, alttipi, cinsi, style, beden FROM stok'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM stok'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM stok')
    Connection = Connention
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'irstok')
    Options.FieldOrigins = foNone
    Left = 588
    object tblStokAramaid: TIntegerField
      FieldName = 'id'
    end
    object tblStokAramamastersku: TStringField
      FieldName = 'mastersku'
      Size = 255
    end
    object tblStokAramasku: TStringField
      FieldName = 'sku'
      Size = 255
    end
    object tblStokAramabarkod: TStringField
      FieldName = 'barkod'
      Size = 255
    end
    object tblStokAramabedenadi: TStringField
      FieldName = 'bedenadi'
      Size = 255
    end
    object tblStokAramaaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tblStokAramarengi: TStringField
      FieldName = 'rengi'
      Size = 255
    end
    object tblStokAramatipi: TStringField
      FieldName = 'tipi'
      Size = 255
    end
    object tblStokAramaalttipi: TStringField
      FieldName = 'alttipi'
      Size = 255
    end
    object tblStokAramacinsi: TStringField
      FieldName = 'cinsi'
      Size = 255
    end
    object tblStokAramastyle: TStringField
      FieldName = 'style'
      Size = 255
    end
    object tblStokAramabeden: TStringField
      FieldName = 'beden'
      Size = 255
    end
    object tblStokAramanewbarkod: TStringField
      FieldName = 'newbarkod'
      Size = 255
    end
    object tblStokAramaimage: TStringField
      FieldName = 'image'
      Size = 255
    end
  end
  object dsStokArama: TMyDataSource
    AutoEdit = False
    DataSet = tblStokArama
    Left = 628
  end
  object cxStyleRepository1: TcxStyleRepository
    Scalable = False
    Left = 664
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object popStokList: TPopupMenu
    Left = 92
    Top = 152
    object Edit1: TMenuItem
      Caption = '&Print'
      object Undo1: TMenuItem
        Caption = '&Barcode Print'
        OnClick = Undo1Click
      end
      object Repeat1: TMenuItem
        Caption = '&Barcode Desing'
        OnClick = Repeat1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
    end
  end
  object tblStokListe: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO stokliste'
      
        '  (id, mastersku, sku, barkod, bedenadi, aciklama, rengi, tipi, ' +
        'alttipi, cinsi, style, beden)'
      'VALUES'
      
        '  (:id, :mastersku, :sku, :barkod, :bedenadi, :aciklama, :rengi,' +
        ' :tipi, :alttipi, :cinsi, :style, :beden)')
    SQLDelete.Strings = (
      'DELETE FROM stokliste'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE stokliste'
      'SET'
      
        '  id = :id, mastersku = :mastersku, sku = :sku, barkod = :barkod' +
        ', bedenadi = :bedenadi, aciklama = :aciklama, rengi = :rengi, ti' +
        'pi = :tipi, alttipi = :alttipi, cinsi = :cinsi, style = :style, ' +
        'beden = :beden'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, mastersku, sku, barkod, bedenadi, aciklama, rengi, ti' +
        'pi, alttipi, cinsi, style, beden FROM stokliste'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM stokliste'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM stokliste')
    Connection = Connention
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'irstokliste')
    Options.FieldOrigins = foNone
    Left = 812
    Top = 600
    object tblStokListeid: TIntegerField
      FieldName = 'id'
    end
    object tblStokListemastersku: TStringField
      FieldName = 'mastersku'
      Size = 255
    end
    object tblStokListesku: TStringField
      FieldName = 'sku'
      Size = 255
    end
    object tblStokListebarkod: TStringField
      FieldName = 'barkod'
      Size = 255
    end
    object tblStokListebedenadi: TStringField
      FieldName = 'bedenadi'
      Size = 255
    end
    object tblStokListeaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tblStokListerengi: TStringField
      FieldName = 'rengi'
      Size = 255
    end
    object tblStokListetipi: TStringField
      FieldName = 'tipi'
      Size = 255
    end
    object tblStokListealttipi: TStringField
      FieldName = 'alttipi'
      Size = 255
    end
    object tblStokListecinsi: TStringField
      FieldName = 'cinsi'
      Size = 255
    end
    object tblStokListestyle: TStringField
      FieldName = 'style'
      Size = 255
    end
    object tblStokListebeden: TStringField
      FieldName = 'beden'
      Size = 255
    end
    object tblStokListekolino: TIntegerField
      FieldName = 'kolino'
    end
  end
  object dsStokListe: TMyDataSource
    DataSet = tblStokListe
    Left = 844
    Top = 600
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 820
  end
  object popExcel: TPopupMenu
    Left = 452
    Top = 224
    object ExceleExport1: TMenuItem
      Caption = 'Excel Export'
      OnClick = ExceleExport1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object BarcodeDelete1: TMenuItem
      Caption = 'Barcode Delete'
      OnClick = BarcodeDelete1Click
    end
  end
  object sd: TSaveDialog
    Left = 380
    Top = 120
  end
  object tblIrsAktarim: TMyQuery
    Connection = Connention
    Left = 972
    Top = 576
  end
  object dsIrsAktarim: TMyDataSource
    Left = 1020
    Top = 576
  end
end
