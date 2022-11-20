unit BarkodFormCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Data.DB, DBAccess,
  MyAccess, MemDS, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls, frxClass, frxDesgn,
  frxDBSet, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.Menus, frxBarcode, WebImage,
  Vcl.OleCtrls, SHDocVw, AdvCustomControl, AdvWebBrowser,cxGridExportLink,
  cxImage;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lblMasterSku: TLabel;
    lblSku: TLabel;
    lblBakod: TLabel;
    lblTipi: TLabel;
    lblAltTipi: TLabel;
    lblCinsi: TLabel;
    lblStyle: TLabel;
    lblRengi: TLabel;
    edtBarkod: TEdit;
    edtMasterSku: TEdit;
    edtSku: TEdit;
    edtTipi: TEdit;
    edtAltTipi: TEdit;
    edtCinsi: TEdit;
    edtStyle: TEdit;
    edtRengi: TEdit;
    lblBedenAdi: TLabel;
    edtBedenAdi: TEdit;
    lblBeden: TLabel;
    edtBeden: TEdit;
    btnBarkodBas: TButton;
    Connention: TMyConnection;
    tblStok: TMyQuery;
    dsStok: TMyDataSource;
    Label1: TLabel;
    edtBarkodOkut: TEdit;
    qDummy: TMyQuery;
    lblAciklama: TLabel;
    edtAciklama: TEdit;
    frRapor: TfrxReport;
    Button1: TButton;
    frxDesigner1: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    Panel1: TPanel;
    tblStokArama: TMyQuery;
    dsStokArama: TMyDataSource;
    vStokList: TcxGridDBTableView;
    cxStokListLevel1: TcxGridLevel;
    cxStokList: TcxGrid;
    vStokListId: TcxGridDBColumn;
    vStokListMasterSku: TcxGridDBColumn;
    vStokListSku: TcxGridDBColumn;
    vStokListBarkod: TcxGridDBColumn;
    vStokListTipi: TcxGridDBColumn;
    vStokListAltTipi: TcxGridDBColumn;
    vStokListStyle: TcxGridDBColumn;
    vStokListCinsi: TcxGridDBColumn;
    vStokListRengi: TcxGridDBColumn;
    vStokListBedenAdi: TcxGridDBColumn;
    vStokListBeden: TcxGridDBColumn;
    vStokListAciklama: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    popStokList: TPopupMenu;
    Edit1: TMenuItem;
    Undo1: TMenuItem;
    Repeat1: TMenuItem;
    N3: TMenuItem;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tblStokListe: TMyQuery;
    lblBarkodKaydet: TLabel;
    edtBarkodKaydet: TEdit;
    dsStokListe: TMyDataSource;
    frxBarCodeObject1: TfrxBarCodeObject;
    edtKoliNo: TEdit;
    Label2: TLabel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    R1: TWebImage;
    popExcel: TPopupMenu;
    ExceleExport1: TMenuItem;
    sd: TSaveDialog;
    N1: TMenuItem;
    BarcodeDelete1: TMenuItem;
    tblStokListeid: TIntegerField;
    tblStokListemastersku: TStringField;
    tblStokListesku: TStringField;
    tblStokListebarkod: TStringField;
    tblStokListebedenadi: TStringField;
    tblStokListeaciklama: TStringField;
    tblStokListerengi: TStringField;
    tblStokListetipi: TStringField;
    tblStokListealttipi: TStringField;
    tblStokListecinsi: TStringField;
    tblStokListestyle: TStringField;
    tblStokListebeden: TStringField;
    tblStokListekolino: TIntegerField;
    tblStokAramaid: TIntegerField;
    tblStokAramamastersku: TStringField;
    tblStokAramasku: TStringField;
    tblStokAramabarkod: TStringField;
    tblStokAramabedenadi: TStringField;
    tblStokAramaaciklama: TStringField;
    tblStokAramarengi: TStringField;
    tblStokAramatipi: TStringField;
    tblStokAramaalttipi: TStringField;
    tblStokAramacinsi: TStringField;
    tblStokAramastyle: TStringField;
    tblStokAramabeden: TStringField;
    tblStokAramanewbarkod: TStringField;
    tblStokAramaimage: TStringField;
    vStokListnewbarkod: TcxGridDBColumn;
    tblStokid: TIntegerField;
    tblStokmastersku: TStringField;
    tblStoksku: TStringField;
    tblStoknewbarkod: TStringField;
    tblStokbarkod: TStringField;
    tblStokbedenadi: TStringField;
    tblStokaciklama: TStringField;
    tblStokrengi: TStringField;
    tblStoktipi: TStringField;
    tblStokalttipi: TStringField;
    tblStokcinsi: TStringField;
    tblStokstyle: TStringField;
    tblStokbeden: TStringField;
    tblStokimage: TStringField;
    JdForm: TTabSheet;
    Panel3: TPanel;
    cxUrtIrsStok: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    tblIrsAktarim: TMyQuery;
    dsIrsAktarim: TMyDataSource;
    function  Excele(GRD:TcxGrid):boolean;

    procedure edtBarkodOkutKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBarkodBasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Undo1Click(Sender: TObject);
    procedure Repeat1Click(Sender: TObject);
    procedure edtBarkodKaydetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExceleExport1Click(Sender: TObject);
    procedure BarcodeDelete1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

function TForm1.Excele(GRD:TcxGrid):boolean;
begin
 sd.Filter := 'Excel|*.xlsx'; if not (sd.Execute) then Exit;
 ExportGridToXLSX(sd.FileName, GRD, True, True, true, 'xlsx');
 Result := True;
end;

procedure TForm1.BarcodeDelete1Click(Sender: TObject);
begin
 qDummy.Close;
 qDummy.SQL.Clear;
 qDummy.SQL.Add('DELETE FROM irstokliste WHERE id ='+ tblStokListe.FieldByName('id').AsString);
 qDummy.Execute;
 tblStokListe.Refresh;
end;

procedure TForm1.btnBarkodBasClick(Sender: TObject);
begin
  tblStok.Close;
  tblStok.SQL.Clear;
  tblStok.SQL.Add('SELECT id,mastersku,sku,newbarkod,barkod,bedenadi,aciklama,rengi,tipi,alttipi,cinsi,style,beden,image FROM irstok WHERE ((barkod = :prbarkod)OR(newbarkod = :prbarkod))');
  tblStok.ParamByName('prbarkod').Value := copy(edtBarkod.Text,1,13);
  tblStok.Open;
  frRapor.loadfromfile(ExtractFilePath(ParamStr(0))+'rapor\Barkod1.fr3');
  frRapor.PrepareReport;
  frRapor.PrintOptions.ShowDialog := False;  frRapor.Print;
 //frRapor.ShowReport(true);

 edtBarkodOkut.Text := '';
 edtBarkod.Text    := ''; edtMasterSku.Text := '';
 edtSku.Text       := '';
 edtTipi.Text      := '';
 edtAltTipi.Text   := '';
 edtStyle.Text     := '';
 edtCinsi.Text     := '';
 edtRengi.Text     := '';
 edtBedenAdi.Text  := '';
 edtBeden.Text     := ''; edtAciklama.Text  := '';
 R1.WebPicture.Assign(nil);
 edtBarkodOkut.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
frRapor.DesignReport(true);
end;


procedure TForm1.edtBarkodKaydetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not(key=Vk_RETURN) then exit;
  qDummy.Close;
  qDummy.SQL.Clear;
  qDummy.SQL.Add('SELECT mastersku,sku,barkod,bedenadi,aciklama,rengi,tipi,alttipi,cinsi,style,beden FROM irstok WHERE barkod = :prbarkod');
  qDummy.ParamByName('prbarkod').Value := copy(edtBarkodKaydet.Text,1,12);
  qDummy.Open;
  if qDummy.RecordCount<1 then
  begin
     ShowMessage('Okutulan Barkod Stoklarda Bulunamadý..');     edtBarkodKaydet.Text :='';     Exit;  end;
  tblStokListe.Close;
   tblStokListe.Open;
  qDummy.Close;
  qDummy.SQL.Text := 'INSERT INTO irstokliste(mastersku,sku,barkod,bedenadi,aciklama,rengi,tipi,alttipi,cinsi,style,beden,kolino)'+
  'SELECT mastersku,sku,barkod,bedenadi,aciklama,rengi,tipi,alttipi,cinsi,style,beden,'+ edtKoliNo.Text +' FROM irstok WHERE barkod = '+ copy(edtBarkodKaydet.Text,1,12);
  qDummy.Execute;
  tblStokListe.Refresh;
  edtBarkodKaydet.Text :='';
end;

procedure TForm1.edtBarkodOkutKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var barkod : string;
  barkod2 :Integer;
  begin
  if not(key=Vk_RETURN) then exit;
  barkod2 := StrToInt(copy(edtBarkodOkut.Text,1,1));
  //AND (barkod2 = 0)
  if ((Length(edtBarkodOkut.Text)= 13) AND (Length(edtBarkodOkut.Text)= 12) AND (barkod2 = 0)) then
      barkod := copy(edtBarkodOkut.Text,1,13)
  else
  begin
      barkod := copy(edtBarkodOkut.Text,1,13);
  end;
  qDummy.Close;
  qDummy.SQL.Clear;
  qDummy.SQL.Add('SELECT mastersku,sku,newbarkod,barkod,bedenadi,aciklama,rengi,tipi,alttipi,cinsi,style,beden,image FROM irstok WHERE ((barkod like CONCAT("%",:prbarkod,"%"))OR(newbarkod like CONCAT("%",:prbarkod,"%"))) limit 1');
  qDummy.ParamByName('prbarkod').Value := barkod;
  qDummy.Open;

  if qDummy.RecordCount<1 then
  begin
     ShowMessage('Okutulan Barkod Stoklarda Bulunamadý..');     edtBarkodOkut.Text := '';     edtBarkod.Text    := '';     edtMasterSku.Text := '';
     edtSku.Text       := '';
     edtTipi.Text      := '';
     edtAltTipi.Text   := '';
     edtStyle.Text     := '';
     edtCinsi.Text     := '';
     edtRengi.Text     := '';
     edtBedenAdi.Text  := '';
     edtBeden.Text     := '';     edtAciklama.Text  := '';     R1.WebPicture.Assign(nil);     Exit;  end;

  edtBarkod.Text    := qDummy.FieldByName('newbarkod').Value;
  edtMasterSku.Text := qDummy.FieldByName('mastersku').Value;
  edtSku.Text       := qDummy.FieldByName('sku').Value;
  edtTipi.Text      := qDummy.FieldByName('tipi').Value;
  edtAltTipi.Text   := qDummy.FieldByName('alttipi').Value;
  edtStyle.Text     := qDummy.FieldByName('style').Value;
  edtCinsi.Text     := qDummy.FieldByName('cinsi').Value;
  edtRengi.Text     := qDummy.FieldByName('rengi').Value;
  edtBedenAdi.Text  := qDummy.FieldByName('bedenadi').Value;
  edtBeden.Text     := qDummy.FieldByName('beden').Value;
  edtAciklama.Text  := qDummy.FieldByName('aciklama').Value;

  if qDummy.FieldByName('image').Value = '' then
     R1.URL := 'http://www.bsksoft.com/yukleme/firmaresim/yok.jpg'
     else
     begin
      if R1.URL <> qDummy.FieldByName('image').Value then
         R1.URL := qDummy.FieldByName('image').Value
     else
     begin
         R1.WebPicture.Assign(nil);
         R1.URL := qDummy.FieldByName('image').Value;
     end;
  end;
  barkod := '';
  edtBarkodOkut.Text := '';
end;

procedure TForm1.ExceleExport1Click(Sender: TObject);
begin
 Excele(cxGrid1);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
tblStokArama.Close;
tblStokArama.Open;
tblStokListe.Close;
tblStokListe.Open;
end;

procedure TForm1.Repeat1Click(Sender: TObject);
begin
  frRapor.DesignReport(true);
end;

procedure TForm1.Undo1Click(Sender: TObject);
begin
 tblStok.Close;
  tblStok.SQL.Clear;
  tblStok.SQL.Add('SELECT id,mastersku,sku,newbarkod,barkod,bedenadi,aciklama,rengi,tipi,alttipi,cinsi,style,beden,image FROM irstok WHERE barkod = :prbarkod');
  tblStok.ParamByName('prbarkod').Value := tblStokArama.FieldByName('barkod').Value;
  tblStok.Open;
 frRapor.loadfromfile(ExtractFilePath(ParamStr(0))+'rapor\Barkod1.fr3');
 frRapor.PrepareReport;
 frRapor.PrintOptions.ShowDialog := False; frRapor.Print;
 //frRapor.ShowReport(true);
end;

end.
