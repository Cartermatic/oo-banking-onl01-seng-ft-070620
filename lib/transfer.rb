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
  while self.sender.balance -= 50
   self.receiver.balance += 50
   self.status = "complete"
   unless
   self.status == "complete"
     end
   end
 end
   
 
 
end


