class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|

      t.references  :user,        null:false,   foreign_key:true
      t.integer     :name,        null:false
      t.date        :day,         null:false
      t.integer     :time,        null:false
      t.text        :content,     null:false

      t.timestamps
    end
  end
end
