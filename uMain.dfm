object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 367
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 660
    Height = 200
    Align = alTop
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1RecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object cxGrid1DBTableView1codigo: TcxGridDBColumn
        DataBinding.FieldName = 'codigo'
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
        Width = 400
      end
      object cxGrid1DBTableView1dataIncial: TcxGridDBColumn
        DataBinding.FieldName = 'dataIncial'
      end
      object cxGrid1DBTableView1dataFinal: TcxGridDBColumn
        DataBinding.FieldName = 'dataFinal'
      end
      object cxGrid1DBTableView1situacao: TcxGridDBColumn
        DataBinding.FieldName = 'situacao'
        Width = 50
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Button1: TButton
    Left = 577
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object dxMemData1: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F050000000400000003000700636F6469676F00F401
      000001000A0064657363726963616F000400000009000B0064617461496E6369
      616C000400000009000A006461746146696E616C000100000001000900736974
      756163616F00010100000001060000006461646F733101D03B0B0001783B0B00
      010100000041010200000001060000006461646F733201793B0B0001923B0B00
      010100000049010300000001060000006461646F733301DC3A0B0001D73B0B00
      010100000041010400000001060000006461646F733401743B0B0001443D0B00
      010100000041}
    SortOptions = []
    Left = 24
    Top = 248
    object dxMemData1codigo: TIntegerField
      FieldName = 'codigo'
    end
    object dxMemData1descricao: TStringField
      FieldName = 'descricao'
      Size = 500
    end
    object dxMemData1dataIncial: TDateField
      FieldName = 'dataIncial'
    end
    object dxMemData1dataFinal: TDateField
      FieldName = 'dataFinal'
    end
    object dxMemData1situacao: TStringField
      FieldName = 'situacao'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 112
    Top = 248
  end
end
