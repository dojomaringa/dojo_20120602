require_relative "caixa"

describe "Caixa" do
  it "retorna 1 nota" do
    Caixa.saca(10).should == [10]
  end

  it "retorna 2 notas" do
    Caixa.saca(30).should == [20, 10]
    Caixa.saca(40).should == [20, 20]
  end

  it "retorna 3 notas" do
    Caixa.saca(90).should == [50, 20, 20]
  end

  it "retorna todas notas" do
    Caixa.saca(180).should == [100, 50, 20, 10]
  end

  it "retorna notas disponiveis" do
    Caixa.disponiveis().should == [100,50,20,10]
  end

  it "lanca excecao para notas indisponiveis" do
    expect {
      Caixa.saca(91)
    }.to raise_error
  end

  it "lanca excecao para strings" do
    expect{
      Caixa.saca("cachorro")
    }.to raise_error(ArgumentError)
  end
end