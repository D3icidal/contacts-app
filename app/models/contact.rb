class Contact < ApplicationRecord
  def friendly_updated_at
    # p @contact.updated_at.strftime("%A, %d %b %Y %l:%M %p")
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  
end
