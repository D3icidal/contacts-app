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
    puts "\t\t********** Current user: #{current_user.username}"
    p 'current_user'
    p current_user
    if current_user
      @contacts = current_user.contacts
      render "index.json.jbuilder"
    else
      render json: []
    end
    # @contacts = Contact.all
    # render 'index.json.jbuilder'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      bio: params[:bio],
      phone_number: params[:phone_number],
      user_id: current_user.id
      )
    @contact.save
    render 'show.json.jbuilder'
  end

  def show
    puts "\t\t********** Current user: #{current_user.username}"
    p 'current_user'
    p current_user
    find
    if @contact.user.id == current_user.id
      render 'show.json.jbuilder'
      # render json: @contact.groups
    else
      render json: "Not Authorized to view this contact"
    end
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
