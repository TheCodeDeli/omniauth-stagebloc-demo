class SessionsController < ApplicationController
  def create
    render json: auth_hash.info
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
