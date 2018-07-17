class RegistrationsController < Devise::RegistrationsController
  before_action :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    %i[sign_up user_update].each do |cont|
      devise_parameter_sanitizer.permit(cont) { |u| user_params(u) }
    end
  end

  private

  def user_params(user)
    user.permit :first_name, :last_name,
                :email, :password,
                :password_confirmation, :current_password
  end
end
