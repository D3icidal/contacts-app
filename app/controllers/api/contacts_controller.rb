class Api::ContactsController < ApplicationController
  # def first_contact_action
  #   @contact = Contact.first
  #   puts @contact
  #   render "first_contact_view.json.jbuilder"
  # end

  # def all_contacts_action
  #   @all_contacts = []
  #   Contact.all.each do |contact|
  #     @all_contacts << contact
  #   end
  #   render "all_contacts_view.json.jbuilder"
  # end

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      bio: params[:bio],
      phone_number: params[:phone_number]
      )
    @contact.save
    render 'show.json.jbuilder'
  end

  def show
    find
    render 'show.json.jbuilder'
  end

  def find
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    find
    @contact.update(
      first_name: params[:first_name] || @contact.first_name,
      middle_name: params[:middle_name] || @contact.middle_name,
      last_name: params[:last_name] || @contact.last_name,
      bio: params[:bio] || @contact.bio,
      email: params[:email] || @contact.email,
      phone_number: params[:phone_number] || @contact.phone_number
      )
    render 'show.json.jbuilder'
  end

  def destroy
    Contact.delete(params[:id])
    render 'destroy.json.jbuilder'
  end

end
