class Suggest < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message 
  attribute :website,   :validate => true
  attribute :title,     :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Suggested Competition",
      :to => "art.design.competitions@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end