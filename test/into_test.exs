defmodule IntoTest do
  use ExUnit.Case
  doctest Into

  test "greets the world" do
    assert Into.hello() == :world
  end
end
