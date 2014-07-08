class PostsController < ApplicationController
  load_and_authorize_resource

  private
  def permitted_params
    params.permit resource_class.name.underscore => [:title, :text]
  end
end
