unit uPessoa;

interface

  Type RDadosPessoa = record
      Altura: Double;
      Peso: Double;
      Sexo: String;
      IMC: String;
  end;

  var PDadosPessoa: RDadosPessoa;

  function CalcularIMC(pAltura, pPeso: Double; pSexo: String): String;

implementation

  function CalcularIMC(pAltura, pPeso: Double; pSexo: String): String;
  var lIMC: Double;
      lStrIMC: String;
  begin
    lIMC  := pPeso/(pAltura*pAltura);
    if pSexo = 'Fem' then
    begin
      if (lIMC <= 21.9) then
         lStrIMC := 'Abaixo do peso'
      else
        if (lIMC >= 22.0) and (lIMC <= 27.0) then
           lStrIMC := 'Peso normal'
        else
          if (lIMC > 27.0) and (lIMC <= 32.0) then
             lStrIMC := 'Sobrepeso'
          else
            if (lIMC > 32.0) and (lIMC <= 37.0) then
               lStrIMC := 'Obesidade grau I'
            else
              if (lIMC > 37.0) and (lIMC < 42.0) then
                lStrIMC := 'Obesidade grau II (severa)'
              else
                if (lIMC >= 42.0) then
                  lStrIMC := 'Obesidade grau III (mórbida)';
    end
    else
    begin
      if pSexo = 'Masc' then
      begin
        if (lIMC <= 21.9) then
          lStrIMC := 'Abaixo do peso'
        else
          if (lIMC >= 22.0) and (lIMC <= 27.0) then
            lStrIMC := 'Peso normal'
          else
            if (lIMC > 27.0) and (lIMC <= 30) then
               lStrIMC := 'Sobrepeso'
            else
              if (lIMC > 30.0) and (lIMC <= 35.0) then
                lStrIMC := 'Obesidade grau I'
              else
                if (lIMC > 35.0) and (lIMC < 40.0) then
                  lStrIMC := 'Obesidade grau II (severa)'
                else
                  if (lIMC >= 40.0) then
                  lStrIMC := 'Obesidade grau III (mórbida)';
      end;
    end;
    Result := lStrIMC;
  end;

end.
