class ApiController < ActionController::Metal
  include AbstractController::Callbacks
  include ActionController::RackDelegation
  include ActionController::StrongParameters

  acts_as_token_authentication_handler_for User, fallback_to_devise: false

  before_action :require_token

  protected

  def require_token
    unless current_user
      return head :unauthorized
    end
  end

end
