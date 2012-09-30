class User < ActiveRecord::Base
  attr_accessible :balance_cents, :name, :email
  monetize :balance_cents
  def deposit(amount)
    self.balance_cents += amount
    save
  end
  def payment(amount)
    self.balance_cents -= amount
    save
  end
end
