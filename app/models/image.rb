class Image < ActiveRecord::Base
  belongs_to :article
  validates :headline, presence: true
  def increse_like
    self.like += 1
  end

  def get_like
    self.like
  end
end
