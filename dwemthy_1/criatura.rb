# Apenas uma simples e singela criatura
class Criatura

	# define métodos de escrita e leitura para as variáveis de instancia
	attr_accessor :vida, :forca, :carisma, :arma
	
	# Inicializacao: qualquer criatura tem ao menos 1 em cada
	def initialize
		@vida = 1
		@forca = 1
		@carisma = 1
		@arma = 1
	end

  # Este método aplica um golpe recebido durante uma luta.
  def golpear(dano)
    aumento_poder = rand(carisma)
    if aumento_poder % 9 == 7
      @vida += aumento_poder / 4
      puts "[Aumento de poderes mágicos de #{self.class}:#{aumento_poder}!]"
    end 
    @vida -= dano
    puts "[#{self.class} está morto.]" if @vida <= 0
  end

	def luta_sem_arma(inimigo)
		lutar(inimigo, @arma)
	end

  private
  # Este método obtém uma rodada em uma luta.
  def lutar(inimigo, arma)
    if vida <= 0
      puts "[#{self.class} está muito morto para lutar!]"
      return
    end

    # Ataca o oponente
    seu_golpe = rand(forca)  + arma
    puts "[Você golpeou com #{seu_golpe} pontos de dano!]"
    inimigo.golpear(seu_golpe)

    # Retaliação
    p inimigo
    if inimigo.vida > 0
      inimigo_golpe = rand(inimigo.forca) + inimigo.arma 
      puts "[Seu inimigo golpeou com #{inimigo_golpe} pontos de dano!]"
      golpear(inimigo_golpe)
    end
  end
end
