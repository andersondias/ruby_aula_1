class Coelho < Criatura
	attr_accessor :bombas
	
	def initialize
	  @vida = 15
		@forca = 3
		@carisma = 25
		@arma = 2
		@bombas = 3
	end

	def espadada(inimigo)
		lutar(inimigo, 20)
	end

  def boomerang(inimigo)
		lutar(inimigo, 10)
  end

	def come_alface(inimigo)
		alface = rand(carisma)
		puts "[O alface da vida recuperou #{alface} pontos de vida seus]"
		@vida += alface
		lutar(inimigo, arma)
	end

	def solta_bomba(inimigo)
		if @bombas.zero?
			puts "[Hey! Você está sem bombas]"
			lutar(inimigo, 0)
			return
		end
		@bombas -= 1
		lutar(inimigo, 50)
	end
end

