{
AlanCarlosDev
24/04/2023 - 11:25h

Exercício: TD_04_PRINT_TOTAL_RECORD

• Funções permitidas: assign, reset, close, readln, writeln, copy, while, for, if, break,
val;

Escreva uma função que mostre o total de registro diferente
e exiba cada um deles.

DB_TESTE.txt (conteudo do arquivo abaixo)
NOME LINHA          |REGISTRO  |ID1|TIPO1     |VLR1      |ID2|TIPO2     |VLR2      |ID3|TIPO3     |VLR3      |TOTAL     |
MAIARA            01|00242     |01 |TX1       |0.50      |02 |TX2       |1.10      |03 |TX3       |0.99      |2.59      |
ROBERTA    02       |00242     |01 |TX1       |1.11      |02 |TX2       |0.10      |03 |TX3       |8.31      |9.52      |
CLARA          03   |00242     |01 |TX1       |10.00     |02 |TX2       |0.38      |03 |TX3       |0.90      |12.97     |
FERNANDO        04  |03502     |01 |TX1       |1.00      |02 |TX2       |0.80      |03 |TX3       |20.99     |22.79     |
ULISSES 05          |03502     |01 |TX1       |0.08      |02 |TX2       |1.08      |03 |TX3       |0.80      |1.96      |
CLEITOM      08     |03502     |01 |TX1       |0.01      |02 |TX2       |1.25      |03 |TX3       |0.75      |2.01      |
AFONSO            09;01999     ;01 ;TX1       ;1.12      ;02 ;TX2       ;0.49      ;03 ;TX3       ;5.62      ;7.23      ;
CLARICE    10       ;01999     ;01 ;TX1       ;3.12      ;02 ;TX2       ;2.22      ;03 ;TX3       ;0.63      ;5.97      ;
EDUARD          11  ;01999     ;01 ;TX1       ;12.01     ;02 ;TX2       ;0.10      ;03 ;TX3       ;0.09      ;12.02     ;
MILENA           14 ;01999     ;01 ;TX1       ;0.42      ;02 ;TX2       ;6.00      ;03 ;TX3       ;0.02      ;6.44      ;
JOSE 15             |00694     |01 |TX1       |0.28      |02 |TX2       |3.05      |03 |TX3       |5.09      |8.42      |
CLEMENTE 16         |00694     |01 |TX1       |2.00      |02 |TX2       |1.87      |03 |TX3       |0.55      |4.42      |
ANAIS        19     |00694     |01 |TX1       |1.23      |02 |TX2       |3.21      |03 |TX3       |0.00      |4.44      |
ISA    22           |08500     |01 |TX1       |0.08      |02 |TX2       |1.79      |03 |TX3       |2.38      |4.25      |
ALEXANDRE       23  |08500     |01 |TX1       |0.67      |02 |TX2       |0.09      |03 |TX3       |15.01     |15.77     |
MURIEL     24       |08500     |01 |TX1       |7.18      |02 |TX2       |2.58      |03 |TX3       |0.67      |10.43     |
ASTOLFO        26   |08500     |01 |TX1       |2.40      |02 |TX2       |1.00      |03 |TX3       |0.32      |3.72      |
ANAKIN   27         |00603     |01 |TX1       |8.10      |02 |TX2       |1.95      |03 |TX3       |2.36      |12.41     |
ALDEBARAM     28    |00603     |01 |TX1       |7.24      |02 |TX2       |9.01      |03 |TX3       |3.54      |19.79     |
SAORI             32|00603     |01 |TX1       |8.00      |02 |TX2       |6.76      |03 |TX3       |3.99      |18.75     |
}

program TD_04_PRINT_TOTAL_RECORD;

var
    arquivo: text;
    linha: string;
    i, j: integer;
    numero, registro: string;
    numero_igual: boolean;
    contador: integer;
    

begin
    assign(arquivo, '/uploads/DB_TESTE.txt');
    reset(arquivo); 

  numero := '';
  numero_igual := false;
  contador := 0;

    for i := 1 to 21 do
        begin
        readln(arquivo, Linha);
        registro := '';
            for j := 22 to 29 do
                begin
                registro := registro + Linha[j];
                end;
                
            if registro = numero then
                begin
                numero_igual := true;
                end
            else
               begin
               numero := registro;
               numero_igual := false;
               end;
               
            if not numero_igual then
            begin
            if copy(Linha, 22, 8) <> 'REGISTRO' then
                begin
                for j := 1 to 8 do
                    begin
                    write(Linha[j + 21]);
                    end;
                contador := contador + 1;
                writeln;
                end;
            end;
        end;
    writeln (contador);
    close(arquivo); 
end.