# json.index "test index"
# json.contacts @contacts
json.array! @contacts do |contact|
  json.id contact.id
  json.fname contact.first_name
  json.updated contact.friendly_updated_at
end