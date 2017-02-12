class Comment < ActiveRecord::Base
  belongs_to :employee
  validates :number, numericality: { greater_than: 0 }

  before_save do
    puts '>>>>>>> before_save: Comment'
  end
  
  after_save do
    puts '******* saved: Comment'
  end

  before_validation do
    puts ">>>>>>> before_validate: Comment '#{name}'"
  end
end
