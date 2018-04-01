unit Unit2;

interface

//uses

type
  TProductA1 = class;
  TProductB1 = class;
  TProductA2 = class;
  TProductB2 = class;
  TAbstractFactory = class
  public
      function printProductA:string; virtual; abstract;
      function printProductB:string; virtual; abstract;
  end;
  TConcreteFactory1 = class(TAbstractFactory)
  private
    ProductA1: TProductA1;
    ProductB1: TProductB1;
  public
    function printProductA:string; override;
    function printProductB:string; override;
  end;
  TConcreteFactory2 = class(TAbstractFactory)
  private
    ProductA2: TProductA2;
    ProductB2: TProductB2;
  public
    function printProductA:string; override;
    function printProductB:string; override;
  end;
  TAbstractProductA = class
  public
    function print: string; virtual; abstract;
  end;
  TProductA1 = class(TAbstractProductA)
  public
    function print: string; override;
  end;
  TProductA2 = class(TAbstractProductA)
  public
    function print: string; override;
  end;
  TAbstractProductB = class
  public
    function print: string; virtual; abstract;
  end;
  TProductB1 = class(TAbstractProductB)
  public
    function print: string; override;
  end;
  TProductB2 = class(TAbstractProductB)
  public
    function print: string; override;
  end;

implementation

{ TProductA1 }

function TProductA1.print: string;
begin
  result:='ProductA1print';
end;

{ TProductA2 }

function TProductA2.print: string;
begin
  result:='ProductA2print';
end;

{ TProductB1 }

function TProductB1.print: string;
begin
  result:='ProductB1print';
end;

{ TProductB2 }

function TProductB2.print: string;
begin
  result:='ProductB2print';
end;

{ TConcreteFactory1 }

function TConcreteFactory1.printProductA: string;
begin
  ProductA1:=TProductA1.create;
  result:=ProductA1.print;
  ProductA1.Destroy;
end;

function TConcreteFactory1.printProductB: string;
begin
  ProductB1:= TProductB1.create;
  result:=ProductB1.print;
  ProductB1.Destroy;
end;

{ TConcreteFactory2 }

function TConcreteFactory2.printProductA: string;
begin
  ProductA2:=TProductA2.create;
  result:=ProductA2.print;
  ProductA2.Destroy;
end;

function TConcreteFactory2.printProductB: string;
begin
  ProductB2:=TProductB2.create;
  result:=ProductB2.print;
  ProductB2.Destroy;
end;

end.
