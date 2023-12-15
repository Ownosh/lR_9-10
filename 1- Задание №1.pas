program z1_1;
const
  N = 5;
type
  IntArray = array[1..N] of Integer;
var
  a: IntArray;
  i, k, m: Integer;
function prod(var a: IntArray; var m, k: integer): integer;
var
  i: Integer;
begin
  for i := 1 to N do 
  begin
    Write('Введите элемент ', i, ': ');
    ReadLn(a[i]);
  end;
  k := 1;
  for i := 1 to N do 
    k := k * a[i];
  WriteLn('Произведение всех элементов: ', k);
  m := 1;
  for i := 1 to N do 
    if a[i] mod 2 = 0 then
      m := m * a[i];
  WriteLn('Произведение четных элементов: ', m);
  prod := k + m; 
end;
begin
  prod(a, m, k);
end.
