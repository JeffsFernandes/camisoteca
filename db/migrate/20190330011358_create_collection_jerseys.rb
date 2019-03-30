class CreateCollectionJerseys < ActiveRecord::Migration[5.1]
  def change
    create_table :collection_jerseys do |t|
      t.text :text
      t.string :manufacturer

      t.timestamps
    end
  end
end
