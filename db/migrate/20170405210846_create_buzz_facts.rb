class CreateBuzzFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :buzz_facts do |t|
      t.string :title
      t.string :content
      t.string :category

      t.timestamps
    end
  end
end
