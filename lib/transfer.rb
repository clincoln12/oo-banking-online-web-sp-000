class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  
  
  def initialize(sender, receiver, amount)
    @status = 'pending'
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
  
  def valid?
    return true if @sender.valid? && @receiver.valid
    false
  end
end
