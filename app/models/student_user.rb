class StudentUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable


  validates :username, presence:true, uniqueness: true
  validates :email, presence:true, uniqueness: true

  

  private

  def after_confirmation
     WelcomeMailer.send_greetings_notification(self).deliver_now      
  end      
end
