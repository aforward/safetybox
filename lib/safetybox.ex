defmodule Safetybox do

  # Taken from https://gist.github.com/10nin/5713366
  def encrypt(nil), do: encrypt("")
  def encrypt(str) do
    :crypto.hash(:md5, str)
      |> :erlang.bitstring_to_list
      |> Enum.map(&(:io_lib.format("~2.16.0b", [&1])))
      |> List.flatten
      |> :erlang.list_to_bitstring
  end


end
