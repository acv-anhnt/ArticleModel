class Article < ActiveRecord::Base

  has_many :texts
  has_many :images
  validates :title, presence: true
  def get_published
    return false if self.post_at == nil || self.post_at.to_i > Time.now.to_i
    return true
  end

  def set_published
    self.post_at = Time.now.utc
  end

  def get_content
    content = self.texts + self.images
    return content.sort_by{ |item| item.position}
  end

  def increse_like
    self.like += 1
  end

  def get_like
    self.like
  end
end
