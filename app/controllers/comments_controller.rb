class CommentsController < InheritedResources::Base
  # actions :all, except: [:edit, :show, :update]
  actions :index, :create, :destroy

  def index
    @comments = Comment.all
    @comment = Comment.new
  end

  private
  def permitted_params
    params.permit comment: [:author, :text]
  end
end
