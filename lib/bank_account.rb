class BankAccount
  attr_reader :name
  attr_accessor :status, :balance
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = open
  end
end
