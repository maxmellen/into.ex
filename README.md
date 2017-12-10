# Into

Collect the result of a pipe expression **into** a variable with `~>`

```elixir
import Into, only: [~>: 2]

[1, 2, 3]
|> Enum.reduce(&+/2)
~> sum

sum == 6
```

## Installation

The package can be installed by adding `into` to your list of dependencies in
`mix.exs`:

```elixir
def deps do
  [
    {:into, "~> 0.1.0"}
  ]
end
```
