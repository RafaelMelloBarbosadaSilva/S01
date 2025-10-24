module Rastreavel
  def obter_localizacao(hora)
    "Localização às #{hora}: #{@localizacao}"
  end
end

module Perigoso
  def calcular_risco
    "Risco alto detectado em #{@localizacao}!"
  end
end

class Participante
  attr_accessor :nome, :localizacao

  def initialize(nome, localizacao)
    @nome = nome
    @localizacao = localizacao
  end

  def to_s
    "#{@nome} está em #{@localizacao}"
  end
end

class Detetive < Participante
  include Rastreavel

  def to_s
    "Detetive #{@nome} investigando em #{@localizacao}"
  end
end

class MestreDoCrime < Participante
  include Rastreavel
  include Perigoso

  def to_s
    "Mestre do Crime #{@nome} tramando em #{@localizacao}"
  end
end

class Cenario
  def initialize(participantes)
    @participantes = participantes
  end

  def identificar_ameacas
    @participantes.select { |p| p.respond_to?(:calcular_risco) }
  end
end

puts "Digite a localização atual de Sherlock:"
loc_s = gets.chomp
puts "Digite a localização atual de Moriarty:"
loc_m = gets.chomp

sherlock = Detetive.new("Sherlock", loc_s)
moriarty = MestreDoCrime.new("Moriarty", loc_m)

cenario = Cenario.new([sherlock, moriarty]) 

puts "\n--- Participantes Rastreáveis ---"
puts sherlock.obter_localizacao("10:00")
puts moriarty.obter_localizacao("10:00")

puts "\n--- Alvos Perigosos ---"
cenario.identificar_ameacas.each { |a| puts a.calcular_risco }
