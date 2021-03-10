defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "Returns the count of odd numbers" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      expected_result = 3
      result = ListFilter.call(list)
      assert expected_result == result
    end
  end
end
