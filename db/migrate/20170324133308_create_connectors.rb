class CreateConnectors < ActiveRecord::Migration[5.1]
  def change
    create_table :connectors do |t|
      t.string :title
      t.string :adapter
      t.string :database
      t.string :username
      t.string :password
      t.string :host
      t.string :port

      t.timestamps
    end
  end
end
