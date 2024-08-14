require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup

  end
  def test_accept_money
    cash_register = CashRegister.new(1000)
    transaction = Transaction.new(65)
    transaction.amount_paid = 65

    previous_amount = cash_register.total_money
    cash_register.accept_money(transaction)
    current_amount = cash_register.total_money

    assert_equal(previous_amount + 65, current_amount)
  end

  def test_change
    cash_register = CashRegister.new(1000)
    transaction = Transaction.new(65)
    transaction.amount_paid = 75

    assert_equal 10, cash_register.change(transaction)
  end

  def test_give_receipt
    cash_register = CashRegister.new(1000)
    transaction = Transaction.new(65)
    output = "You've paid $65.\n"
    
    assert_output(output) { cash_register.give_receipt(transaction) }

  end

  def test_prompt_for_payment
    transaction_1 = Transaction.new(65)

    valid_input = StringIO.new("65\n")
    output = StringIO.new
    transaction_1.prompt_for_payment(input: valid_input, output: output)
    assert_equal 65, transaction_1.amount_paid
  end
end


# in_valid_input = StringIO.new("25\n")
# invalid_output = 'That is not the correct amount. ' \
# 'Please make sure to pay the full cost.\n'
# assert_output(invalid_output) {transaction_2.prompt_for_payment(input: in_valid_input)}