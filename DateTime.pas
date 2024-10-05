begin
  var year := ReadInteger('Введите год для проверки:');
  Assert(year > 0);
  var isleap := False;
  if year.Divs(4) then
    if year.Divs(100) then
      if year.Divs(400) then
        isleap := True
      else
    else
      isleap := True;
  Println($'Год является високосным: {isleap}');  
end.