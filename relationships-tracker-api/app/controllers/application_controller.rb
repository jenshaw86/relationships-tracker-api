class ApplicationController < ActionController::API
  before_action :authorized

  def issue_token(user) # returns a JWT
    JWT.encode(user, 'mustLurvd0gz')
  end

  def decoded_token(token) # returns the user
    if token
      begin
        JWT.decode(token, 'mustLurvd0gz', true, {:algorithm => 'HS256'}) # returns [payload (user_id), algo]
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def token
    request.headers['Authorization'].split(' ')[1] # takes index 1 because header looks like this => Authorization: 'Bearer <token>'
  end

  def user_id 
    if decoded_token
      decoded_token[0][user_id] # returns current user's id
    end
  end

  def current_user
    @user ||= User.find_by(id: user_id) # if @user doesn't already have a value, it is assigned an instance
  end

  def logged_in?
    !!current_user # does current_user have a value? is user logged in?
  end

  def authorized
    render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
  end

end
