class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|

      t.references  :language, null:false, foreign_key:true
      t.date        :day,         null:false
      t.integer     :time,        null:false
      t.text        :context,     null:false

      t.timestamps
    end
  end
end
