defmodule IntoTest do
  use ExUnit.Case

  import Into, only: [~>: 2]

  test "~> assigns the result of the preceding expression to the following variable" do
    [1, 2, 3]
    |> Enum.reduce(&+/2)
    ~> sum

    assert sum == 6
  end
end
