class Company < ActiveRecord::Base
  has_many :employees
  validates_associated :employees
  validates :number, numericality: { greater_than: 0 }
  
  before_save do
    puts '>>>>>>> before_save: Company'
  end
  
  after_save do
    puts '******* saved: Company'
  end

  before_validation do
    puts ">>>>>>> before_validate: Company '#{name}'"
  end
end
