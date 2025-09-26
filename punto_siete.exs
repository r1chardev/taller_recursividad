#Funcion recursiva de tipo cola, lineal y directa 

defmodule Main do
  def main() do
    lista=[2,4,3,7,20,15,8]
    sumar_pares(lista,0)
  end
  def sumar_pares([],sumador), do: IO.puts("La suma de los numeros pares es #{sumador}")

  def sumar_pares(lista,sumador) do
    [head|tail]=lista
    if rem(head,2)==0 do
      sumar_pares(tail,sumador+head)
    else
      sumar_pares(tail,sumador)
    end
  end

end

Main.main()
