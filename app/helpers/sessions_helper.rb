module SessionsHelper
  def login(username, password)
    user = User.find_by_username(username)

    if !user.nil? && user.authenticate(password)
      #if user.remember_token.nil?
      user.remember_token = SecureRandom.hex(16)
      session[:remember_token] = user.remember_token
      p session
      user.save!
      true
    else
      #end
      false
    end
  end
  def current_user
    p session
    p "SESSION TOKEN LALALA: #{session[:remember_token]}"
    return nil if session[:remember_token].nil?
    @user ||= User.find_by_remember_token(session[:remember_token])
  end

  def logout
    raise "Should not be logging out"
    current_user.remember_token = nil
    current_user.save!
    session[:remember_token] = nil
  end

  def logged_in?
    not current_user.nil?
  end
end
