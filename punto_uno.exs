#Funciones recursivas de tipo cola y no cola, simple y directa 

defmodule Main do

  def main() do
    numero=pedir_numero()
    factorial(numero)
    |>IO.puts()
  end
  def pedir_numero() do
    numero=IO.gets("Ingrese un numero: ")
    |> String.trim()
    |> String.to_integer()
    if(numero>0) do
      numero
    else
      IO.puts("Error el numero es negativo")
      pedir_numero()
    end
  end
  def factorial(0), do: 1

  def factorial(n) do
    n*factorial(n-1)
  end
end
Main.main()
