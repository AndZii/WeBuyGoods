class PostMailer < ApplicationMailer
  default from: "from@example.com"

  def userLeaveComment(comment)

    @comment = comment

    mail to: 'zykovwat2008@gmail.com',
         subject: "You have new comment!"
  end
end
