class CreateLearners < ActiveRecord::Migration[7.1]
  def change
    create_table :learners do |t|
      t.string :name
      t.string :language

      t.timestamps
    end
  end
end
