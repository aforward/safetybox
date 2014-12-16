defmodule Mix.Tasks.Safetybox.Encrypt do
  use Mix.Task

  @shortdoc "Encrypt a string based on the SALT and SECRET environment variables"

  @moduledoc """
  This task will encrypt your password (or any text) using the provided SALT and SECRET
  This should be considered more secure than plan text passwords, but not much
  """
  def run(args) do
    args
    |> Enum.at(0)
    |> Safetybox.encrypt(System.get_env("SECRET"), System.get_env("SALT"))
    |> IO.puts
  end
end

defmodule Mix.Tasks.Safetybox.Decrypt do
  use Mix.Task

  @shortdoc "Decrypt a string based on the SALT and SECRET environment variables"

  @moduledoc """
  This task will decrypt your password (or any text) using the provided SALT and SECRET
  This should be considered more secure than plan text passwords, but not much
  """
  def run(args) do
    args
    |> Enum.at(0)
    |> Safetybox.decrypt(System.get_env("SECRET"), System.get_env("SALT"))
    |> IO.puts
  end
end