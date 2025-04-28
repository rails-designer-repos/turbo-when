class ApplicationController < ActionController::Base
  before_action :set_current_user

  private

  def set_current_user
    Current.user = User.first || User.create(email: "test@example.com")
  end
end
