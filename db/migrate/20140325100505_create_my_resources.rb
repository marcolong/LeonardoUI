class CreateMyResources < ActiveRecord::Migration
  def change
    create_table :my_resources do |t|
      t.string :name
      t.text :fields
      t.references :my_application, index: true

      t.timestamps
    end
  end
end
