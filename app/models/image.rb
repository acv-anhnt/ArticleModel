class Image < ActiveRecord::Base
  default_scope {order(:position)}
  belongs_to :article
  validates :headline, :position, :article, presence: true
  def increase_like
    self.increment!(:like)
  end
end
