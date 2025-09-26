#Funcion recursiva de tipo cola, lineal y directa 

defmodule Main do
  def main() do
    reservas=[%{cliente: "Juan", noches: 3},
              %{cliente: "Ana", noches: 2},
              %{cliente: "Luis", noches: 4}]
    calcular_noches(reservas,0)
  end
  def calcular_noches([],contador), do: IO.puts("El total de noches es #{contador}")
  def calcular_noches(reservas,contador) do
    [head|tail]=reservas
    calcular_noches(tail,contador+head.noches)
  end
end

Main.main()
