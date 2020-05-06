class ContactsController < ApplicationController
  def new
  end

  def show
    @contact = Contact.find params[:contacts]
  end

  def create
    # render plain: params[:contacts].inspect
    #raise params.inspect
    @contact = Contact.new(contact_params)
    @contact.save

    redirect_to contact_path(@contact)
  end

  def contact_params
    params.require(:contact).permit(:title, :text)
  end
end
