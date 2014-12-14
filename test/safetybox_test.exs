defmodule SafetyboxTest do
  use ExUnit.Case
  alias Safetybox, as: S

  test "encrypt shuold handle nil" do
    assert S.encrypt(nil) == "d41d8cd98f00b204e9800998ecf8427e"
    assert S.encrypt("") == "d41d8cd98f00b204e9800998ecf8427e"
  end

  test "encrypt be consistent" do
    assert S.encrypt("andrew") != "andrew"
    assert S.encrypt("andrew") == S.encrypt("andrew")
  end

end
