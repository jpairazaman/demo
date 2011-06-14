class CreateProductos < ActiveRecord::Migration
  def self.up
    create_table :productos do |t|
      t.string :codigo, :limit => 15, :null => false
      t.string :nombre_largo, :limit => 150, :null => false
      t.string :nombre_corto, :limit => 50, :null => false
      t.references :editorial, :null => false
      t.references :categoria, :null => false
      t.boolean :disponible

      t.timestamps
    end
  end

  def self.down
    drop_table :productos
  end
end
