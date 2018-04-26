require Integer
defmodule CollatzConjecture do
	def items(numero,repeticoes) do
		cond do
			numero == 1 ->
				repeticoes
			Integer.is_even(numero) ->
				items(Kernel.trunc(numero/2),repeticoes+1)
			true ->
				items(numero * 3 + 1,repeticoes+1)
		end
	end

	def sequencia(posicao,vencedor) do
		cond do
			posicao == 999999 ->
				vencedor
			items(posicao+1,1) > vencedor ->
				sequencia(posicao+1,posicao+1)
			true ->
				sequencia(posicao+1,vencedor)
		end
		

	end
end
IO.puts CollatzConjecture.sequencia(1,1)