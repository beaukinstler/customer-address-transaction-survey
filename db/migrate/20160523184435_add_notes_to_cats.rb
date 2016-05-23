class AddNotesToCats < ActiveRecord::Migration
  def change
    add_column :cats, :note, :text
  end
end
