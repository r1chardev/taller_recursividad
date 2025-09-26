defmodule Permutaciones do
  def perm([]), do: [[]]

  def perm(lista) do
    permutar_elementos(lista, [])
  end

  defp permutar_elementos([], _resto), do: []
  defp permutar_elementos([h | t], resto) do
    subperms = perm(resto ++ t)
    agregar_head(h, subperms) ++ permutar_elementos(t, resto ++ [h])
  end

  defp agregar_head(_h, []), do: []
  defp agregar_head(h, [p | ps]) do
    [[h | p] | agregar_head(h, ps)]
  end
end

IO.inspect Permutaciones.perm([1, 2, 3])
