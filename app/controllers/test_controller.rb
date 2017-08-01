class TestController < ApplicationController
	include DingDing
	def index
		study_group='https://oapi.dingtalk.com/robot/send?access_token=b73eff73084ccf05b422f30c0f0bfaaf73c258b69287518cab142147b5dc108a'
    design_group='https://oapi.dingtalk.com/robot/send?access_token=c454441cbc10e250ad3f238f39f2d15537da44ea8586ef80c1bf16cd67fec978'
    platform_group='https://oapi.dingtalk.com/robot/send?access_token=56053cd783e6c57a82d5bff1a8fae3f2210feb15f126be3c69acc902cab96fea'
		#ding_someone(study_group,content:"大数据平台自定义钉钉插件测试",at_all:false)
		render :file => 'app/views/user_mailer/contact.html.erb'
	end
	def sendmail
      email = @params["email"]
	  recipient = email["recipient"]
	  subject = email["subject"]
	  message = email["message"]
      UserMailer.deliver_contact(recipient, subject, message)
      return if request.xhr?
      render :text => 'Message sent successfully'
   end
end
