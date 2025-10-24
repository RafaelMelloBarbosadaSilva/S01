class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "Método deve ser implementado nas subclasses!"
  end
end

class Pianista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} toca a peça '#{peca}' ao piano com emoção."
  end
end

class Violinista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} interpreta '#{peca}' ao violino com precisão."
  end
end

class Maestro
  def initialize(musicos)
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    puts "Iniciando ensaio da peça: #{peca}"
    @musicos.each { |m| m.tocar_partitura(peca) }
  end

  def mudar_foco(estado)
    @musicos.map { |m| "#{m.nome} agora está #{estado}!" }
  end
end

musicos = [
  Pianista.new("Kousei", "Piano"),
  Violinista.new("Kaori", "Violino")
]

maestro = Maestro.new(musicos)
puts "Digite o nome da peça a ser tocada:"
peca = gets.chomp
maestro.iniciar_ensaio(peca)
puts maestro.mudar_foco("Concentrado")
