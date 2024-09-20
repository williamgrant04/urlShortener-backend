class AddPresenceRequirementsToUrl < ActiveRecord::Migration[7.1]
  def change
    # Just for an extra layer of validation, we already have the validations in the model, but better to have them here too.
    change_column_null :urls, :identifier, false
    change_column_null :urls, :source_url, false
  end
end
