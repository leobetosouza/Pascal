program teste;

uses sysutils;

var 
  linha, trinada, titulo, texto : string;
  tamanho, i, inc, countVogais, countConsoantes, aux, countLetras, tamanhoTexto : integer;
  
begin
  
  texto := 'TESTE';
  {linha := '   uma  string <TITULO>   que foi   feita para           <TITULO> com a <TITULO>, <TITULO> e    <TITULO ta todo mundo fu<TITULO> <@#$>%$#$%]<TITULOS>@@%!!<TITULO           a    ';}
  linha := 'AAABBB     AAAB      ';
  trinada := trim(linha);
  tamanho := length(trinada);
  tamanhoTexto := length(texto);
  i := 1;
  
  countVogais := 0;
  countConsoantes := 0;
  
  writeln('String original: *', linha, '*');
  writeln;
  writeln('String apos o trim: *', trinada, '*');
  writeln;
  
  while i <= tamanho do
    begin
      inc := 1;
      
      write(trinada[i]);
      
      if (trinada[i] = ' ') then
        begin
          if (trinada[i+1] = ' ') then
            begin
              delete(trinada, i+1, 1);
              write(': DELETED')
            end;
          {else
            i := i+1;}
        end
      else
        begin
          
          if (trinada[i] in ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']) then
            begin
              countVogais := countVogais+1;
            end
          else
            begin
              if (trinada[i] in ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z']) then
                begin
                  countConsoantes := countConsoantes+1;
              {  end
              else
                begin
                  if (trinada[i] = '<') then
                    begin
                      titulo := '';
                      aux := i+1;
                      countLetras := 0;

                      while ((countLetras <> 7) and (aux <= length(trinada))) do
                        begin
                          titulo := titulo + trinada[aux];
                          aux := aux+1;
                          countLetras := countLetras+1;
                        end;
                      
                      writeln(titulo);  
                      
                      if (titulo = 'TITULO>') then
                        begin
                          delete(trinada, i, 8);
                          insert(texto, trinada, i);
                          inc := tamanhoTexto;
                        end;
                    end;}
                end;
            end;
        end;
      i := i+inc;
    end;
  
  writeln('Quantidade de vogais: ', countVogais);
  writeln('Quantidade de consoantes: ', countConsoantes);
  writeln;
  writeln('String final:');
  writeln('*', trinada, '*');
  
  readln;
  
end.