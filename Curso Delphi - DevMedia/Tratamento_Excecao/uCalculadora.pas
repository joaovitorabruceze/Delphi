unit uCalculadora;

interface

uses
  SysUtils;

type

  EAddError = class(Exception);
  ESubError = class(Exception);
  EDivError = class(Exception);
  EMultError = class(Exception);

  TOperacao = (opAdd, opSub, opDiv, OpMult);

  TCalculadora = class
    private

      FValor1: String;
      FNum1: Double;
      FValor2: String;
      FNum2: Double;
      FResultado: String;
      procedure SetValor1(const Value: String);
      procedure SetValor2(const Value: String);

    protected
      procedure Adicao;
      procedure Subtracao;
      procedure Divisao;
      procedure Multiplicacao;

    public
      procedure executaOperacao(Op: TOperacao);

    published
       property valor1: String read FValor1 write SetValor1;
       property valor2: String read FValor2 write SetValor2;
       property resultado: String read FResultado;

  end;

implementation

  procedure TCalculadora.Adicao;
  begin
    try
      FNum1:= StrToFloat(FValor1);
      FNum2:= StrToFloat(FValor2);
      FResultado:= FloatToStr(FNum1 + FNum2);
    except
      raise EAddError.Create('Erro ao realizar a opereção de adição!')
    end;
  end;

  procedure TCalculadora.Divisao;
  begin
    try
      FNum1:= StrToFloat(FValor1);
      FNum2:= StrToFloat(FValor2);
      FResultado:= FloatToStr(FNum1 / FNum2);
    except
      raise EDivError.Create('Erro ao realizar a opereção de divisão!')
    end;
  end;

  procedure TCalculadora.executaOperacao(Op: TOperacao);
  begin
    case Op of
      opAdd: Adicao;
      opSub: Subtracao;
      opDiv: Divisao;
      OpMult: Multiplicacao;
    end;
  end;

  procedure TCalculadora.Multiplicacao;
  begin
    try
      FNum1:= StrToFloat(FValor1);
      FNum2:= StrToFloat(FValor2);
      FResultado:= FloatToStr(FNum1 * FNum2);
    except
      raise EMultError.Create('Erro ao realizar a opereção de multiplicação!')
    end;
  end;

  procedure TCalculadora.SetValor1(const Value: String);
  begin
    FValor1 := Value;
  end;

  procedure TCalculadora.SetValor2(const Value: String);
  begin
    FValor2 := Value;
  end;

  procedure TCalculadora.Subtracao;
  begin
    try
      FNum1:= StrToFloat(FValor1);
      FNum2:= StrToFloat(FValor2);
      FResultado:= FloatToStr(FNum1 - FNum2);
    except
      raise ESubError.Create('Erro ao realizar a opereção de subtração!')
    end;
  end;

end.
