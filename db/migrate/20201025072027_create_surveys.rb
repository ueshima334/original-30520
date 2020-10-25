class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|

      t.timestamps
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5

    end
  end
end
