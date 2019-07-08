class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  
  
  def initialize(sender, receiver, amount)
    @status = 'pending'
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
  
  def valid?
    return true if @sender.valid? && @receiver.valid?
    false
  end
  
  def execute_transaction
    if valid? && @sender.balance >= amount
      @sender.balance -= amount
      @receiver.balance += amount
      @status = 'complete'
    else
      @status = 'rejected'
      return 'Transaction rejected. Please check your account balance.'
    end
  end
end
