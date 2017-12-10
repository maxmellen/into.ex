defmodule Into do
  @moduledoc """
  Collect the result of a pipe expression **into** a variable with `~>`

      import Into, only: [~>: 2]

  See the docs for `Into.~>/2`
  """

  @doc """
  Assigns the result of the preceding expression to the following variable.

  ## Examples

      import Into, only: [~>: 2]

      [1, 2, 3]
      |> Enum.reduce(&+/2)
      ~> sum

      sum == 6

  """
  defmacro expression ~> variable do
    quote do
      var!(unquote(variable)) = unquote(expression)
    end
  end
end
