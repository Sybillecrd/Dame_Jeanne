class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Merci pour votre message. Nous vous recontacterons bientôt !'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  private

 def contact_params
   params.require(:contact).permit(:name, :email, :message)
 end
end
