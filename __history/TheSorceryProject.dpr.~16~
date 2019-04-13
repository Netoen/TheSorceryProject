program TheSorceryProject;





uses
  Vcl.Forms,
  Sorcery in 'Sorcery.pas' {Form1},
  Bonuses in 'Bonuses.pas' {Form2},
  Dice_Roller in 'Dice_Roller.pas' {Form3},
  Polls in 'Polls.pas' {Form4},
  Vcl.Themes,
  Vcl.Styles,
  Extended_Poll in 'Extended_Poll.pas' {Form6},
  Battle in 'Battle.pas' {Form7},
  Additional_hidden in 'Additional_hidden.pas' {Form5};

var
  x,y: word;

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
//  Application.ShowMainForm := False;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.Title := 'The Sorcery Project';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm5, Form5);
  y := Form1.Top + Form1.Panel2.Top + Form1.Memo_Items.Top + 31;
  x := Form1.Left + Form1.Panel2.Left + Form1.Memo_Items.Left + 10;
  Form6.Top := y;
  Form6.Left:= x;
  Form4.Top := y;
  Form4.Left:= x;
  Form3.Top := y;
  Form3.Left:= x;
  Form2.Top := y;
  Form2.Left:= x;
  Form2.Width := Form1.Panel2.Width;
  Form2.Height := Form1.Panel2.Height;
  Application.Run;
end.
