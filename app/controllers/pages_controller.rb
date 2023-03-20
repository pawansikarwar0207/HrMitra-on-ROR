class PagesController < ApplicationController
  before_action :authenticate_student_user!
  def branch
  end

  def about_us
  end

  def contact_us
  end
end
