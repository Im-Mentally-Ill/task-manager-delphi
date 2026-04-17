unit WebModuleUnit1;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{$R *.dfm}

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content :=
    '<html>' +
    '<head><title>Сотрудники</title></head>' +
    '<body>' +
    '<h1>Список сотрудников</h1>' +
    '<table border="1">' +
    '<tr bgcolor="#ccc"><th>ID</th><th>Имя</th><th>Отдел</th><th>Должность</th><th>Зарплата</th></tr>' +
    '<tr><td>1</td><td>Иванов Иван</td><td>IT</td><td>Разработчик</td><td>85000</td></tr>' +
    '<tr><td>2</td><td>Петров Петр</td><td>Sales</td><td>Менеджер</td><td>65000</td></tr>' +
    '<tr><td>3</td><td>Сидорова Анна</td><td>HR</td><td>HR-специалист</td><td>60000</td></tr>' +
    '</table>' +
    '</body></html>';
end;

end.
