class CreateMyApplications < ActiveRecord::Migration
  def change
    create_table :my_applications do |t|
      t.string :name
      t.string :path
      t.boolean :git
      t.boolean :development
      t.boolean :test
      t.boolean :authentication
      t.boolean :authorization
      t.boolean :states
      t.integer :state
      t.boolean :bundle
      t.string :bundle_path

      t.timestamps
    end
  end
end
