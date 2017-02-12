class AddReferenceCommentToEmployee < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.references :employee
    end
  end
end
