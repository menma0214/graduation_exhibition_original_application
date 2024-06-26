class SorceryCore < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password
      t.string :child_age
      t.string :child_sexgit
      t.string :child_personality
      t.string :child_trend
      t.string :like
      t.integer :role, default: 0, null: false
      t.string :salt

      t.timestamps                null: false
    end
  end
end
