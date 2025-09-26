#Funciones recursivas de tipo cola y no cola, simple y directa

defmodule Main do

  def main() do
    lista=crear_lista()
    contar_elementos(lista)
    |>IO.puts()
  end

  def crear_lista() do
    IO.puts("Ingrese elementos de la lista separados por comas (ej: 1,2,3,4,5):")
    entrada=IO.gets("")
    |> String.trim()
    |> String.split(",")
    |> Enum.map(fn x -> String.trim(x) |> String.to_integer() end)
    IO.puts("Lista creada: #{inspect(entrada)}")
    entrada
  end

  def contar_elementos([]), do: 0

  def contar_elementos([_head | tail]) do
    1+contar_elementos(tail)
  end
end
Main.main()
