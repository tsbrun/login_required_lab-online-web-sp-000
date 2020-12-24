class SessionsController < ApplicationController
    def main 
    end

    def index 
    end

    def new
    end
    
    def create 
        if params[:name].nil? || params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to welcome_path
        end
    end

    def destroy 
        session.delete :name
    end
end