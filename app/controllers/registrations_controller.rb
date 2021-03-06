# http://stackoverflow.com/questions/4101220/rails-3-devise-how-to-skip-the-current-password-when-editing-a-registratio?rq=1

class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    '/welcome'
  end

	def edit
		@title = 'Edit profile'
		@page_class = 'edit-profile'
	end

  def update
    super
    flash[:notice] = 'Your profile has been updated.'
  end

  def new
    @title = 'Sign up'
    @page_class = 'sign-up-page'
    super
  end
end