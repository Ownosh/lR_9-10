program z1_3;
const 
  N = 5; //глобальная
type

  IntArray = array[1..N] of Integer; //глобальная
  var
  a: IntArray;//глобальные
  i, number, m, k: integer; // фактические
  b: boolean;//глобальные
function nice(var k, m, number: integer): integer; // формальные,number,k,m- по ссылке,
var
  i: integer;  // локальная
begin
  b := False;  // локальная
  
  for i := 1 to N do 
  begin
    write('Введите элемент массива ', i, ': ');
    readln(a[i]);

    if (not b) and (a[i] > 0) then
    begin
      number := i;
      b := True;
    end;
  end;

  if b then
    writeln('Номер первого положительного элемента массива: ', number)
  else
    writeln('В массиве нет положительных элементов.');
  nice := k + m; 
end;
begin
  k := 0; 
  m := 0;
  number := 0;
  nice(k, m, number); 
end.
