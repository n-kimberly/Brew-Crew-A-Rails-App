class UsersController < ApplicationController
  def downgrade
    current_user.update_attribute(:role, 'standard')
    flash[:alert] = "You are no longer a premium member. All of your wikis will now be set to public."
    redirect_to root_path
  end
end
