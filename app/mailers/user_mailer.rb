class UserMailer < ActionMailer::Base
   default from: "the_boss@crowdfunder.com"

  def pledge_confirmation(user, pledge)
    @user = user
    @pledge = pledge
    @url = "http://localhost:3000"
    mail(to: user.email, subject: "A pledge has been received!", from: "Crowdfunder")
  end
end
