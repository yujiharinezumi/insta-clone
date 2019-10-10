module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end
end


# if @current_user.nil?
#   @current_user = User.find_by(id: session[:user_id])
# else
#   @current_user
# end


#直訳すると、「@current_userは@current_userまたはUser.find_by..である」だが、よくわからない。
# ||は項を左から順に判定していく。trueになった時点で処理が終了する。
