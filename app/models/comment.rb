class Comment < ActiveRecord::Base
  validates :author, :text, presence: true

  default_scope { order created_at: :desc }

end
