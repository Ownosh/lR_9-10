Program z2_2;

const
  m = 8;
  n = 6;

var
  a: array[1..m, 1..n] of Integer;
  b: array[1..m] of Integer;
  i, j: Integer;

begin
  for i := 1 to m do
    for j := 1 to n do
      a[i, j] := Random(41) - 20; 

  writeln('Исходный массив:');
  for i := 1 to m do
  begin
    for j := 1 to n do
      write(a[i, j]:4);
    writeln;
  end;

  for i := 1 to m do
  begin
    b[i] := 1;

    for j := 1 to n do 
    begin
      if a[i, j] < 0 then
      begin
        b[i] := -1; 
        break; 
      end;
    end;
  end;

  writeln('Одномерный массив:');
  for i := 1 to m do
    write(b[i]:4);
  
  readln;
end.
