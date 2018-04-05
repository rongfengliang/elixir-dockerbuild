defmodule MydemoprojectTest do
  use ExUnit.Case
  doctest Mydemoproject

  test "greets the world" do
    assert Mydemoproject.hello() == :world
  end
end
