module UsersHelper

  
  def user_avatar(user_id)
    @user = User.find(user_id)
    if @user.avatar.attached?
        image_tag @user.avatar, class: 'styles_avatar'
    else
        image_tag 'Default_User_Avatar', class: 'styles_avatar'
    end
  end
end