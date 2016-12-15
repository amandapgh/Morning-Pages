class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.date :date
      t.string :title
      t.string :content
      t.string :mood
      t.timestamps :timestamp
    end
  end
end
