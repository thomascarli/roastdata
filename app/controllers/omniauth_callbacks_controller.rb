class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
      generic_callback( 'facebook' )
  end

  def generic_callback( provider )
    @user = User.from_omniauth(request.env['omniauth.auth'])
    if @user.persisted?
      set_flash_message(:notice, :success, kind: provider.capitalize) if is_navigational_format?
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.#{provider}_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end