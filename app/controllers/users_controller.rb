class UsersController < ApplicationController
  def downgrade
    # Downgrade User
    current_user.update_attribute(:role, 'standard')
    # Make wikis public
    user_wikis = current_user.wikis.where(private: true)
    user_wikis.each do |entry|
      entry.update_attributes(private: false)
    end

    flash[:alert] = "You are no longer a premium member. All of your wikis will now be set to public."
    redirect_to root_path
  end
end
