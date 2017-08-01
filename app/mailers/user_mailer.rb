class UserMailer < ApplicationMailer
	#default from: 'notifications@example.com'
=begin 
  def contact(recipient, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = recipient
      @from = 'no-reply@qq.com'
      @sent_on = sent_at
	  @body["title"] = 'This is title'
  	  @body["email"] = 'sender@yourdomain.com'
   	  @body["message"] = message
      @headers = {}
   end
=end
   def send_mail(params = {})  
    @url  = 'http://example.com/login'  
    mail( :subject => 'abcAAAAAAAASDFADSFADSFADSFDASFASDF',   
          :to => "861827427@qq.com",   
          :from => '861827427@qq.com',   
          :date => Time.now  
        )   
  end  
end
