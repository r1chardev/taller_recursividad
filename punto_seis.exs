#Funciones recursivas de tipo cola y no cola, simple y directa

defmodule Main do

  def main() do
    base=pedir_base()
    exponente=pedir_exponente()
    potencia(base, exponente)
    |>IO.puts()
  end

  def pedir_base() do
    base=IO.gets("Ingrese la base: ")
    |> String.trim()
    |> String.to_integer()
    base
  end

  def pedir_exponente() do
    exponente=IO.gets("Ingrese el exponente: ")
    |> String.trim()
    |> String.to_integer()
    exponente
  end

  def potencia(_, 0), do: 1

  def potencia(base, exponente) do
    base*potencia(base, exponente-1)
  end
end
Main.main()
