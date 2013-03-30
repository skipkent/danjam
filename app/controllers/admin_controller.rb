class AdminController < ApplicationController
  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == 'performer' && password == 'pass4backstage'
    end
  end
end
