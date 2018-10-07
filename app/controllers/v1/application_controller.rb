module V1
    class V1::ApplicationController < ActionController::API
        include Knock::Authenticable
        before_action :authenticate_user
    end 
end
