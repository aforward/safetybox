defmodule Safetybox do

  @moduledoc """
  # Safetybox a collection of security oriented functions
  ## Dependency
      { :safetybox, "~> 0.1" }
  ## Usage
  ### API
      pwd = Safetybox.encrypt("helloworld")

      Safetybox.is_decrypted("goodbyeworld", pwd) # > returns false
      Safetybox.is_decrypted("helloworld", pwd) # > returns true

  ## Author
  Copyright © 2014 Andrew Forward
  @a4word,  aforward@gmail.com
  Licensed under MIT.
  """

  # Taken from https://gist.github.com/10nin/5713366
  def encrypt(nil), do: encrypt("")

  @doc """
  Convert a plaintext string into an encrypted string, for example
      Safetybox.encrypt("helloworld")
  """
  def encrypt(plaintext) do
    :crypto.hash(:md5, plaintext)
      |> :erlang.bitstring_to_list
      |> Enum.map(&(:io_lib.format("~2.16.0b", [&1])))
      |> List.flatten
      |> :erlang.list_to_bitstring
  end

  @doc """
  Compare a plaintext string to it's encrypted version to test if they match.
      Safetybox.is_decrypted("helloworld", "dasdf!@#CASD")
  """
  def is_decrypted(plaintext, encrypted), do: encrypt(plaintext) == encrypted

end
