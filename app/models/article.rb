class Article < ActiveRecord::Base

  has_many :texts
  has_many :images
  validates :title, :post_at, presence: true
  def published?
    post_at < Time.current
  end

  def increse_like
    self.like += 1
  end
end
