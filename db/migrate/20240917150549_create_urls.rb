class CreateUrls < ActiveRecord::Migration[7.1]
  def change
    create_table :urls do |t|
      t.string :uuid
      t.string :shortened_url
      
      t.timestamps
    end
  end
end
