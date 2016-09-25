unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxmdaset, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    dxMemData1: TdxMemData;
    dxMemData1codigo: TIntegerField;
    dxMemData1descricao: TStringField;
    dxMemData1dataIncial: TDateField;
    dxMemData1dataFinal: TDateField;
    dxMemData1situacao: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1dataIncial: TcxGridDBColumn;
    cxGrid1DBTableView1dataFinal: TcxGridDBColumn;
    cxGrid1DBTableView1situacao: TcxGridDBColumn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  with cxGrid1DBTableView1.DataController.Filter do
  begin
    BeginUpdate;
    try
      Root.Clear;
      Root.BoolOperatorKind := fboOr;
      Root.AddItem(cxGrid1DBTableView1situacao, foEqual, 'A', 'Ativo');
    finally
      cxGrid1DBTableView1.DataController.Filter.Active := True;
      EndUpdate;
    end;
  end;
end;

end.
