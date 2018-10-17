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
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
      )
    render 'show.json.jbuilder'
  end

  def show
    @contact = Contacts.find_by(:id, params[:id])
    render 'show.json.jbuilder'
  end

  def update

  end

  def destroy
    Contacts.delete(params[:io])
    render 'destroy.json.jbuilder'
  end

end
