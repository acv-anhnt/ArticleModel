require 'rails_helper'

RSpec.describe Image, type: :model do
  context 'db_structure' do
    it { should have_db_column(:headline) }
    it { should have_db_column(:position) }
    it { should have_db_column(:url) }
    it { should have_db_column(:like) }
  end

  context 'reference' do
    it { should belong_to(:article) }
  end

  context 'logic method' do
    it 'increasig likes' do
      article = Article.create!(title: 'article', post_at: Time.current)
      image = Image.create!(headline: 'test image', position: 100, url: 'url.com', article: article)
      image.increase_like
      expect(image.like).to eq 1
    end
  end
end
