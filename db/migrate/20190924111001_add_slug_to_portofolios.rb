class AddSlugToPortofolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portofolios, :slug, :string
    add_index :portofolios, :slug, unique: true
  end
end
