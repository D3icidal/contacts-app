# json.show "test show"
# json.contact @contact
# json.friendly_updated  @contact.friendly_updated_at
json.partial! "contact.json.jbuilder", contact: @contact