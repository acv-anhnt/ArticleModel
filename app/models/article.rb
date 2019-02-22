class Article < ActiveRecord::Base
  has_many :texts
  has_many :images

  def testFunc
    ap "testFunc"
  end
end
