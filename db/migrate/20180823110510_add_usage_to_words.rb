class AddUsageToWords < ActiveRecord::Migration[5.2]
  def change
    add_column :words, :usage, :string
  end
end
