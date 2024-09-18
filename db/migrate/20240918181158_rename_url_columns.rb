class RenameUrlColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column :urls, :uuid, :identifier
    rename_column :urls, :shortened_url, :source_url
  end
end
