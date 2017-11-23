require("minitest/autorun")
require_relative("./bank_account")

class TestBankAccount < MiniTest::Test

  def test_account_name
    account = BankAccount.new("Craig", 500, "personal")
    account.holder_name = "Harrison"
    assert_equal( "Harrison", account.holder_name)
  end

  def test_account_amount
    account = BankAccount.new("Craig", 500, "personal")
    account.amount = 1000
    assert_equal(1000, account.amount)
  end

  def test_account_type
    account = BankAccount.new("Craig", 500, "personal")
    account.type = "business"
    assert_equal("business", account.type)
  end

end
