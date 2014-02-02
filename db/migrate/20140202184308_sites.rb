class Sites < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :sites, id: :uuid do |t|
      t.string :name
      t.uuid :url_id
      t.boolean :active
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :sites, [:id,:name,:url_id,:active]
  end
end
