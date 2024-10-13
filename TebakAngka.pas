program TebakAngka;
uses crt;

label
1,2;

var
i,angka,angkauser,kesempatan,ulang: Integer;
mainlagi:char;

begin
1:
clrscr;
Randomize;
angka := Random(10)+1;
kesempatan := 3;

writeln('Selamat datang di game tebak angka');
writeln('----------------------------------');
repeat
write('Silakan masukan angka tebakan anda (1-10): ');
readln(angkauser);

if angkauser = angka then
    begin
        writeln('Angkanya adalah ',angka);
        write('Selamat Kamu menang ');
        break;
    end
else if angkauser > 10 then
    begin
        writeln('Harap masukan angka dari 1 - 10');
    end
else
    begin
        dec(kesempatan);
        if kesempatan > 0 then
        begin
        writeln('Angka tebakan anda salah, anda masih memiliki ', kesempatan, ' kesempatan');
        end;
    end;

until kesempatan = 0;

if kesempatan = 0 then
    begin
        writeln('Anda kalah, kesempatan habis, angka yang benar adalah ', angka);
    end;
2:
writeln('Apakah anda ingin bermain lagi Y/N');
readln(mainlagi);

case mainlagi of
    'y' : goto 1;
    'Y' : goto 1;
    'n' : writeln('Terima kasih telah bermain');
    'N' : writeln('Terima kasih telah bermain');

else
    begin
        goto 2;
    end;
end
end.