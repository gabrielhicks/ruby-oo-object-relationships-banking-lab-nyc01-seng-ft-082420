# hey sam! you are a great partner!!!

class Transfer
# Transfer
    attr_accessor :sender, :receiver, :status, :amount
    @@all = [ ]
#   initialize
#     can initialize a Transfer (FAILED - 10)
#     initializes with a sender (FAILED - 11)
#     initializes with a receiver (FAILED - 12)
#     always initializes with a status of 'pending' (FAILED - 13)
#     initializes with a transfer amount (FAILED - 14)
    def initialize(sender, receiver, amount)
        @sender = sender
        @receiver = receiver
        @status = "pending"
        @amount = amount
        @@all << self
    end
# Transfer.new(gabriel, sam, 1000)
    def  self.all
         @@all  end 
#   #valid?
#     can check that both accounts are valid (FAILED - 15)
#     calls on the sender and receiver's #valid? methods (FAILED - 16)
    def  valid?
         @sender.valid? && @receiver.valid?  end
#   #execute_transaction
#     can execute a successful transaction between two accounts (FAILED - 17)
#     each transfer can only happen once (FAILED - 18)
#     rejects a transfer if the sender does not have enough funds (does not have a valid account) (FAILED - 19)
    def execute_transaction

      if(@status == "pending")
         if(@sender.status == "closed" || @receiver.status == "closed" || @sender.balance < amount)
          @status = "rejected"
          return "Transaction rejected. Please check your account balance."
         elsif(@sender.balance >= amount)
            @sender.balance   -= amount
            @receiver.balance += amount

            @status = "complete"
         end
      end
    end
#   #reverse_transfer
#     can reverse a transfer between two accounts (FAILED - 20)
#     it can only reverse executed transfers (FAILED - 21)
    def reverse_transfer
        if(self.status == "complete")
            @sender.balance   += amount
            @receiver.balance -= amount    
            
            @status = "reversed"
        end
    end
end
