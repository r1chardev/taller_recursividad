#Funciones recursivas de tipo cola y no cola, simple y directa

defmodule Main do

  def main() do
    pedidos=crear_pedidos()
    sumar_cantidades_pedidos(pedidos)
    |>IO.puts()
  end

  def crear_pedidos() do
    IO.puts("Ingrese numero de pedidos:")
    num_pedidos=IO.gets("")
    |> String.trim()
    |> String.to_integer()

    crear_pedidos_rec(num_pedidos, [])
  end

  def crear_pedidos_rec(0, lista), do: lista

  def crear_pedidos_rec(n, lista) do
    IO.puts("Pedido #{n}:")
    producto=IO.gets("  Producto: ")
    |> String.trim()

    cantidad=IO.gets("  Cantidad: ")
    |> String.trim()
    |> String.to_integer()

    pedido=%{producto: producto, cantidad: cantidad}
    crear_pedidos_rec(n-1, [pedido | lista])
  end

  def sumar_cantidades_pedidos([]), do: 0

  def sumar_cantidades_pedidos([%{cantidad: cantidad} | tail]) do
    cantidad+sumar_cantidades_pedidos(tail)
  end
end
Main.main()
