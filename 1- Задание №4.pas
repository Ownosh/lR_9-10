var 
  a, b: array of integer;// Глобальные
  i, s1, s2: integer;// Глобальные  
procedure pro10(i, s1, s2: integer; var a, b: array of integer); // формальные,s1,s2,i- по значению;a,b -по ссылке,
const n=10;//локальная
var a1, b1: array [1..n] of integer;// локальные
begin
  writeln('Изначальные массивы:');
  for i:=1 to n do
  begin
    a1[i]:=random(-40, 40); // Фактические
    b1[i]:=random(-40, 40); // Фактические
  end;
  writeln(a1);
  writeln(b1);
  writeln;
  for i:=1 to n do
  begin
    if a1[i]>0 then s1:=s1+a1[i];
    if b1[i]>0 then s2:=s2+b1[i];
  end;
  if s1<s2 then
    for i:=1 to n do
      a1[i]:=a1[i]*10
  else
    for i:=1 to n do
      b1[i]:=b1[i]*10; 
  writeln('Изменённые массивы:');
  writeln(a1);
  writeln(b1);
end;
begin
  pro10(i, s1, s2, a, b); 
end.
