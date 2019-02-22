class Text < ActiveRecord::Base
  belongs_to :article

  def increse_like
    self.like += 1
  end

  def get_like
    self.like
  end
end
