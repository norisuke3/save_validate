class Employee < ActiveRecord::Base
  belongs_to :company
  has_many :comments
  validates_associated :comments
  validates :number, numericality: { greater_than: 0 }

  before_save do
    puts '>>>>>>> before_save: Employee'
  end
  
  after_save do
    puts '******* saved: Employee'
  end

  before_validation do
    puts ">>>>>>> before_validate: Employee '#{name}'"
  end
end
