class PagesController < ApplicationController

  #layout 'application', except: :main
  #layout  except: [:main]

  def main
    render layout: false
  end

end
