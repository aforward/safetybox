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

  test "is_decrypted against encrypted value" do
    assert S.is_decrypted("helloworld", "XXX") == false
    assert S.is_decrypted("helloworld", S.encrypt("andrew")) == false
    assert S.is_decrypted("helloworld", S.encrypt("helloworld")) == true
  end

  test "is_decrypted should handle nil" do
    assert S.is_decrypted(nil, "XXX") == false
    assert S.is_decrypted("helloworld", nil) == false
    assert S.is_decrypted(nil, nil) == false
    assert S.is_decrypted(nil, S.encrypt(nil)) == true
    assert S.is_decrypted("", S.encrypt("")) == true
  end

end
