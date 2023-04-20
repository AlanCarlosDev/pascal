program Fibonacci;

var
  a, b, c, i: Integer;

begin

  a := 0;
  b := 1;

  Write(a, ', ', b);

  for i := 3 to 10 do
  begin
    c := a + b;

    Write(', ', c);

    a := b;
    b := c;
  end;
  Writeln;
end.