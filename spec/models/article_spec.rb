require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validation' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:post_at) }
  end
  context 'db structure' do
    it { should have_db_column(:title) }
    it { should have_db_column(:post_at) }
    it { should have_db_column(:like) }
  end
  context 'reference' do
    it { should have_many(:texts) }
    it { should have_many(:images) }
  end
  context 'logic method' do
    it 'is not published' do
      article = Article.create(title: 'test published', post_at: Time.current + 1 )
      expect(article.published?).to eq false
    end
    it 'published method true' do
      article = Article.create(title: 'test published', post_at: Time.current )
      expect(article.published?).to eq true
    end
    it 'returns images' do
      article = Article.create!(title: 'test Images', post_at: Time.current)
      image = Image.create!(headline: 'the desert', url: 'theDesert.com', article: article, position: 1)
      image1 = Image.create!(headline: 'the desert', url: 'theDesert.com', article: article, position: 1)
      puts image
      expect(article.images).to include(image)
    end
    it 'icreasing the like num' do
      article = Article.create!(title: 'Test increasing', post_at: Time.current)
      article.increse_like
      expect(article.like).to eq 1
    end
  end
end
