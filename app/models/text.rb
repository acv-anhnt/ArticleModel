class Text < ActiveRecord::Base
  belongs_to :article
  validates :headline, :position, :paragraph, presence: true
  def increse_like
    self.like += 1
  end

  def get_like
    self.like
  end
end
