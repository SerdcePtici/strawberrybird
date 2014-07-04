class PoemsController < InheritedResources::Base

  private
  def permitted_params
    params.permit poem: [:title, :text]
  end
end
