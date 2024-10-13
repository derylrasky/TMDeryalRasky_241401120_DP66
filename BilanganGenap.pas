program bilanganGenap;
uses crt;

var
i,n,sum:integer;
begin
clrscr;
writeln('Masukan batas bilangan: ');
readln(n);
sum := 0;

for i := 1 to (n) do 
    if (i mod 2 = 0) then
        begin
            writeln(i, ' Adalah bilangan genap ');
            sum:=sum+i;             
        end;  
writeln('Total bilangan genap ', sum);
end.

