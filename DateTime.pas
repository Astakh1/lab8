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
  if isleap then
    Println('В данном году 366 дней')
  else
    Println('В данном году 365 дней');
  var (mon1, day1, mon2, day2) := (ReadInteger('Введите номер 1 месяца:'), ReadInteger('Введите номер 1 дня:'), ReadInteger('Введите номер 2 месяца:'), ReadInteger('Введите номер 2 дня:'));
  var datecloser := 1;
  if mon1 < mon2 then
    datecloser := 2
  else if mon1 = mon2 then
    if day1 < day2 then
      datecloser := 2;
  Println($'Месяц ближе к новому году: {datecloser}');
end.