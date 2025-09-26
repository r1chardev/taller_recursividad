#Funcion recursiva de tipo directa, lineal y no de cola 

defmodule Main do
  def main() do
    ingresos=[100, -50, 200, -30]
    calcular_saldo(ingresos)
    |> IO.puts()
  end

  def calcular_saldo([]),  do: 0

  def calcular_saldo(lista) do
    [head|tail]=lista
    head+calcular_saldo(tail)
  end
end


Main.main()
