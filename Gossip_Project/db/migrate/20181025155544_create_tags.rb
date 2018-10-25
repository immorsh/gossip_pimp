class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.belongs_to :gossips
      t.string :title
      t.timestamps
    end
  end
end
