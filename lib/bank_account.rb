class BankAccount
# BankAccount
    attr_accessor :balance, :status
    attr_reader :name
    @@all = [ ]
#   #initialize
#     can initialize a Bank Account (FAILED - 1)
#     initializes with a name (FAILED - 2)
#     always initializes with balance of 1000 (FAILED - 3)
#     always initializes with a status of 'open' (FAILED - 4)
#     can't change its name (FAILED - 5)
    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
        @@all << self
    end

    def  self.all 
         @@all  end 
#   #deposit
#     can deposit money into its account (FAILED - 6)
    def  deposit(money)
         @balance += money  end
#   #display_balance
#     can display its balance (FAILED - 7)
    def  display_balance
         p "Your balance is $#{@balance}."   end 
#   #valid?
#     is valid with an open status and a balance greater than 0 (FAILED - 8)
    def  valid?
         @balance > 0 && @status == "open"  end
#   #close_account
    def  close_account
         @status = "closed"  end
#     can close its account (FAILED - 9)
end

