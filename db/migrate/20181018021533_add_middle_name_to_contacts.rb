class AddMiddleNameToContacts < ActiveRecord::Migration[5.2]
  def change
    #cmd :controller, #name, :type
    add_column :contacts, :middle_name, :string 
    add_column :contacts, :bio, :text
  end
end
 