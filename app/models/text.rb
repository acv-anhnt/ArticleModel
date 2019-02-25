class Text < ActiveRecord::Base
  default_scope {order(:position)}
  belongs_to :article
  validates :headline, :position, :article, :url, presence: true
  def increse_like
    self.increment!(:like)
  end
end
