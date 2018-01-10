class BaseController < ApplicationController
  layout 'base'
  before_action :authenticate_admin!
end
