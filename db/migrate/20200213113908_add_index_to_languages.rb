class AddIndexToLanguages < ActiveRecord::Migration[5.2]
  def change
    add_index :languages, :tittle, length: 32
  end
end
