class UserMailer < ActionMailer::Base
   default from: "the_boss@crowdfunder.com"

  def pledge_confirmation(user)
    @user = user
    @url = "http://localhost:3000"
    mail(to: user.email, subject: "A pledge has been received!", from: "Crowdfunder")
  end
end
