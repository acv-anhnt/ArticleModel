class Article < ActiveRecord::Base
  has_many :texts
  has_many :images

  def get_content
    self.texts
  end

  def increse_like
    self.like += 1
  end

  def get_like
    self.like
  end
end
