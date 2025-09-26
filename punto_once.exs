#Funcion recursiva de tipo directa e indirecta, lineal y de cola y no cola 

defmodule Main do
  def main() do
    matriz = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]]
  sumar_matriz(matriz,0)
  end
  def sumar_matriz([],suma), do: IO.puts("La suma de la matriz es #{suma}")
  def sumar_matriz(matriz,suma) do
    [head|tail]=matriz
    sumar_matriz(tail,sumar_fila(head)+suma)
  end
  def sumar_fila([]), do: 0
  def sumar_fila(fila) do
    [head|tail]=fila
    head+sumar_fila(tail)
  end
end

Main.main()
