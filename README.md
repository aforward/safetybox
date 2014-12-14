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

## License

MIT License, see LICENSE

Copyright (c) 2014 Andrew Forward

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.