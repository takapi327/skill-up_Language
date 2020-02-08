class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|

      t.references  :user,        null:false,   foreign_key:true
      t.string      :tittle,      null:false
      t.integer     :name_id,     null:false
      t.date        :day,         null:false
      t.integer     :study_id,    null:false
      t.text        :content,     null:false

      t.timestamps
    end
  end
end
