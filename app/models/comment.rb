class Comment < ActiveRecord::Base
  validates :author, :text, presence: true

  default_scope { order created_at: :desc }

  paginates_per 10

end
