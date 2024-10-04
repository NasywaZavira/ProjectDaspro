program KalkulatorHukumOhm;
uses crt;

var
    choice: char;
    V, I, R: real;

begin
    clrscr;
    writeln('Program Perhitungan Berdasarkan Hukum Ohm');
    writeln('==========================================');
    writeln('Pilih perhitungan yang ingin dilakukan:');
    writeln('1. Tegangan (V)');
    writeln('2. Hambatan (R)');
    writeln('3. Arus (I)');
    write('Masukkan pilihan (1/2/3): ');
    readln(choice);
    
    case choice of
        '1': begin
            write('Masukkan Arus (I) dalam Ampere: ');
            readln(I);
            write('Masukkan Hambatan (R) dalam Ohm: ');
            readln(R);
            V := I * R;  { Hukum Ohm: V = I * R }
            writeln('Tegangan (V) = ', V:0:2, ' Volt');
            writeln('Terima kasih sudah mencoba kalkulator kami.');
        end;
        
        '2': begin
            write('Masukkan Tegangan (V) dalam Volt: ');
            readln(V);
            write('Masukkan Arus (I) dalam Ampere: ');
            readln(I);
            if I <> 0 then
            begin
                R := V / I;  { Hukum Ohm: R = V / I }
                writeln('Hambatan (R) = ', R:0:2, ' Ohm');
                writeln('Terima kasih sudah mencoba kalkulator kami.');
            end
            else
                writeln('Arus tidak boleh nol.');
        end;
        
        '3': begin
            write('Masukkan Tegangan (V) dalam Volt: ');
            readln(V);
            write('Masukkan Hambatan (R) dalam Ohm: ');
            readln(R);
            if R <> 0 then
            begin
                I := V / R;  { Hukum Ohm: I = V / R }
                writeln('Arus (I) = ', I:0:2, ' Ampere');
                writeln('Terima kasih sudah mencoba kalkulator kami.');
            end
            else
                writeln('Hambatan tidak boleh nol.');
        end;
        
        else
            writeln('Pilihan tidak valid.');
    end;

    readln;
end.
