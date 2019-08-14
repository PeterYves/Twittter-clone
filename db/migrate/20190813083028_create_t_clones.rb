class CreateTClones < ActiveRecord::Migration[5.2]
  def change
    create_table :t_clones do |t|
      t.string :content

      t.timestamps
    end
  end
end
