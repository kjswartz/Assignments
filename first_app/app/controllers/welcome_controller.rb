class WelcomeController < ApplicationController
  def index
    @title = params["title"]

    # code to connect to rotton tomotoes API

    @synopsis = params["synopsis"]
  end
end
