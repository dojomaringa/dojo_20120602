class Caixa
  def self.disponiveis
    [100, 50, 20, 10]
  end

  def self.saca(valor)
    cedulas_retornadas = []

    self.disponiveis.each do |cedula|
      if valor >= cedula
        cedulas_retornadas << cedula
        valor -= cedula
        redo # refaz o loop
      end
    end

    raise unless valor == 0

    cedulas_retornadas
  end
end