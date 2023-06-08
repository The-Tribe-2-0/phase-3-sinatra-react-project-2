class CreateTodo < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :todo
      t.references :user, foreign_key: true
    end
  end
end
