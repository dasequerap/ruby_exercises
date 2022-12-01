# frozen_string_literal: true

# Account class
class Account
  @@accounts_number = 0
  attr_reader :id
  attr_accessor :balance, :interest_rate

  def initialize(id, balance, interest_rate)
    @id = id
    @balance = balance
    @interest_rate = interest_rate
    @@accounts_number += 1
  end

  def calculate_balance
    total_balance = @balance * @interest_rate
    puts "Balance: #{total_balance}"
  end

  def accounts_number
    puts "Customer has #{@@accounts_number} accounts"
  end
end

class CheckingAccount < Account
  def initialize(id, balance = 0.0, interest_rate = 0.01)
    super(id, balance, interest_rate)
  end
end

class SavingsAccount < Account
  def initialize(id, balance = 0.0, interest_rate = 0.04)
    super(id, balance, interest_rate)
  end
end

checking_account = CheckingAccount.new(1)
checking_account.calculate_balance
savings_account = SavingsAccount.new(2, 100)
savings_account.calculate_balance
savings_account.accounts_number
puts '------------------------'

#modules exercise
module ModuleA
  def method_a
    puts 'Method A'
  end
end

module ModuleB
  def method_b
    puts 'Method B'
  end
end

module ModuleC
  class MyClass
    include ModuleA
    include ModuleB
    def method_class
      puts 'Method Class'
    end
  end
end


my_class = ModuleC::MyClass.new
my_class.method_a
my_class.method_b
my_class.method_class
