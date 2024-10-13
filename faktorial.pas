program faktorial;
uses crt;

var 
i,n,hasil:longint;
begin
clrscr;
hasil:=1;
writeln('Masukan Bilangan '); 
readln(n);
    
for i:= 1 to (n) do
    begin
        hasil:=hasil*i;
    end;
    writeln('Hasil faktorial dari ', n, ' adalah ', hasil);
end.