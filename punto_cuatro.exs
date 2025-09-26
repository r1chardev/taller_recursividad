#Funciones recursivas de tipo cola y no cola, simple y directa

defmodule Main do

  def main() do
    lista=crear_lista()
    elemento=pedir_elemento()
    buscar_elemento(elemento, lista)
    |>IO.puts()
  end

  def crear_lista() do
    IO.puts("Ingrese elementos de la lista separados por comas:")
    entrada=IO.gets("")
    |> String.trim()
    |> String.split(",")
    |> Enum.map(fn x -> String.trim(x) |> String.to_integer() end)
    IO.puts("Lista creada: #{inspect(entrada)}")
    entrada
  end

  def pedir_elemento() do
    elemento=IO.gets("Ingrese el elemento a buscar: ")
    |> String.trim()
    |> String.to_integer()
    IO.puts("Buscando: #{elemento}")
    elemento
  end

  def buscar_elemento(_, []), do: false

  def buscar_elemento(elemento, [elemento | _]) do
    true
  end

  def buscar_elemento(elemento, [_ | tail]) do
    buscar_elemento(elemento, tail)
  end
end
Main.main()
