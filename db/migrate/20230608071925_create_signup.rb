class CreateSignup < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.string :name
      t.string :email
      t.string :password
      t.references :user, foreign_key: true
    end
  end
end