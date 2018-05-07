class HomeController < ApplicationController
  #Source: https://github.com/nsarno/knock/issues/138
  skip_before_action :authenticate_user, raise: false

  def index
    
  end
end