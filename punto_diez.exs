#Funciones recursivas de tipo cola y no cola, simple y directa

defmodule Main do

  def main() do
    objetivo=pedir_objetivo()
    arbol=crear_arbol_ejemplo()
    rutas_suma_objetivo(arbol, objetivo)
    |>IO.inspect()
  end

  def pedir_objetivo() do
    objetivo=IO.gets("Ingrese la suma objetivo: ")
    |> String.trim()
    |> String.to_integer()
    objetivo
  end

  def crear_arbol_ejemplo() do
    # Arbol:    1
    #          / \
    #         2   3
    #        / \
    #       4   5
    {:nodo, 1,
     {:nodo, 2,
      {:nodo, 4, nil, nil},
      {:nodo, 5, nil, nil}},
     {:nodo, 3, nil, nil}}
  end

  def rutas_suma_objetivo(arbol, objetivo) do
    rutas_suma_objetivo_rec(arbol, objetivo, [], [])
  end

  defp rutas_suma_objetivo_rec(nil, _, _, _), do: []

  defp rutas_suma_objetivo_rec({:nodo, valor, nil, nil}, objetivo, ruta_actual, rutas) do
    nueva_ruta = [valor | ruta_actual]
    suma = Enum.sum(nueva_ruta)
    if suma == objetivo do
      [Enum.reverse(nueva_ruta) | rutas]
    else
      rutas
    end
  end

  defp rutas_suma_objetivo_rec({:nodo, valor, hijo_izq, hijo_der}, objetivo, ruta_actual, rutas) do
    nueva_ruta = [valor | ruta_actual]
    rutas_izq = rutas_suma_objetivo_rec(hijo_izq, objetivo, nueva_ruta, rutas)
    rutas_der = rutas_suma_objetivo_rec(hijo_der, objetivo, nueva_ruta, rutas)
    rutas_izq ++ rutas_der
  end
end
Main.main()
