class CommentsController < InheritedResources::Base
  load_and_authorize_resource
  actions :index, :create, :destroy
  has_scope :page, default: 1
  before_action :new_comment, only: :index

  def create
    unless verify_recaptcha(model: @comment)
      redirect_to :back, notice: 'К сожалению, система определила, что вы робот' and return
    end
    super
  end

  private
  def permitted_params
    params.permit comment: [:author, :text]
  end

  def new_comment
    @comment = Comment.new
  end
end
