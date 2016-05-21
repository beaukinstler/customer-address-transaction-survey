class ChangeAfterZipFromIntegerToString < ActiveRecord::Migration
  def change
    change_column :cats, :after_zip,  :string
  end
end
