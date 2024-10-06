program KalkulatorHukumOhm;
uses crt;

var
    pilihan: char;
    V, I, R: real;

label 1,2,3,4;

begin
    clrscr;

    1:
    writeln('Program Perhitungan Berdasarkan Hukum Ohm');
    writeln('==========================================');
    writeln('Pilih perhitungan yang ingin dilakukan:');
    writeln('1. Tegangan (V)');
    writeln('2. Hambatan (R)');
    writeln('3. Arus (I)');
    writeln('=========================================');
    write('Masukkan pilihan (1/2/3): '); readln(pilihan);
    
    case choice of
        '1': begin
                write('Masukkan I (Arus dalam Ampere) : '); readln(I);
                write('Masukkan R (Hambatan dalam Ohm) : '); readln(R);
                V := I * R;  { Hukum Ohm: V = I * R }
                writeln('V (Tegangan dalam Volt) = ', V:0:2, ' Volt');
             end;
        
        '2': begin
                2:
                write('Masukkan V (Tegangan dalam Volt) : '); readln(V);
                write('Masukkan I (Arus dalam Ampere) : '); readln(I);
                if I <> 0 then
                    begin
                        R := V / I;  { Hukum Ohm: R = V / I }
                        writeln('R (Hambatan dalam Ohm) = ', R:0:2, ' Ohm'); goto 4;
                    end
                else
                        writeln('I (Arus dalam Ampere) tidak boleh nol.'); goto 2;
             end;
        
        '3': begin
                3:
                write('Masukkan V (Tegangan dalam Volt) : '); readln(V);
                write('Masukkan R (Hambatan dalam Ohm): '); readln(R);
                if R <> 0 then
                    begin
                        I := V / R;  { Hukum Ohm: I = V / R }
                        writeln('I (Arus dalam Ampere) = ', I:0:2, ' Ampere'); goto 4;
                    end
                else
                    writeln('R (Hambatan dalam Ohm) tidak boleh nol.'); goto 3;
             end
        else
                writeln('Pilihan tidak Valid.'); goto 1;
    end;

    4:
    writeln('============================================');
    writeln('Terima kasih sudah mencoba kalkulator kami.');
    readln;

end.
