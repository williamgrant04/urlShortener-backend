class AddClickCountToUrl < ActiveRecord::Migration[7.1]
  def change
    add_column :urls, :click_count, :integer, default: 0
  end
end
