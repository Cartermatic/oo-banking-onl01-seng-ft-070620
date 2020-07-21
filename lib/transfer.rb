class Transfer
 
 attr_accessor :sender, :receiver, :status, :amount
 
 
 def initialize(sender, receiver, amount)
   @sender = sender
   @receiver = receiver
   @status = "pending"
   @amount = amount
 end
 def valid?
   self.sender.valid? && self.receiver.valid?
 end
 def execute_transaction
   if self.status = "pending"
   self.sender.balance -= amount
   self.receiver.balance += amount
   self.status = "complete"
   elsif self.sender.balance < self.amount
   "Transaction rejected. Please check your account balance."
  end
 end
   
 
 
end


