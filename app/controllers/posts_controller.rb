class PostsController < ApplicationController

  private
  def permitted_params
    params.permit resource_class.name.underscore => [:title, :text]
  end
end
