class Image < ActiveRecord::Base
  default_scope {order(:position)}
  belongs_to :article
  validates :headline, :position, :article, :paragraph, presence: true
  def increse_like
    self.increment!(:like)
  end
end
