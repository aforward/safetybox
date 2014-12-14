Safetybox
=========

A set of helper functions for security oriented operations.

Documentation: [Safetybox (HEX)](http://hexdocs.pm/safetybox/)

## Usage

Add Safetybox as a dependency in your `mix.exs` file.

```elixir
def deps do
  [ { :safetybox, "~> 0.1" } ]
end
```

After you are done, run `mix deps.get` in your shell to fetch and compile Safetybox. Start an interactive Elixir shell with `iex -S mix`.

```iex
iex> alias Safetybox, as: S
nil
iex> pwd = S.encrypt("helloworld")
"fc5e038d38a57032085441e7fe7010b0"
iex> S.is_decrypted("hacker", pwd)
false
iex> S.is_decrypted("helloworld", pwd)
true
```
