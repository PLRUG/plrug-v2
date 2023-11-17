class AddColumnSlugToTalks < ActiveRecord::Migration[7.0]
  def change
    add_column :talks, :slug, :string
  end
end
