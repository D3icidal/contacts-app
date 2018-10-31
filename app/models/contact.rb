class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups
  def friendly_updated_at
    # p @contact.updated_at.strftime("%A, %d %b %Y %l:%M %p")
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  
  
end
