class PagesController < ApplicationController
  skip_authorization_check
  layout false, only: :main

end
