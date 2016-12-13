class ShareController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def add
   id = params[:id]

      if session[:share] then
        share = session[:share]
      else
        session[:share] = {}
        share = session[:share]
      end

      if share[id] then
        share[id] = share[id] + 1
      else
        share[id] = 1
      end

    redirect_to :action => :index
    end

    def clearShare
      session[:share] = nil
        redirect_to :action => :index
    end

  def index
      if session[:share] then
        @share = session[:share]
      else
        @share = {}
      end
  end
end
