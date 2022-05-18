class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.timestamps
      t.string      :content,                          null: false
      t.references  :user,           foreign_key: true,null: false
      t.references  :prototype,      foreign_key: true,null: false
    end
  end
end
