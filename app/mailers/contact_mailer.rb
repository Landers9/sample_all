class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    mail to: "franckaigba4@gmail.com", subject: "Inquiry confirmation email"
  end

end
