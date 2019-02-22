class Article < ActiveRecord::Base
  has_many :texts
  has_many :images

  def is_published
    return false if self.post_at
  end

  def get_content
    content = self.texts + self.images
    content.sort_by{ |item| item.position}
  end

  def increse_like
    self.like += 1
  end

  def get_like
    self.like
  end
end
