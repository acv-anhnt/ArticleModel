require 'rails_helper'

RSpec.describe Text, type: :model do
  context 'db_structure' do
    it { should have_db_column(:headline) }
    it { should have_db_column(:position) }
    it { should have_db_column(:paragraph) }
    it { should have_db_column(:like) }
  end

  context 'reference' do
    it { should belong_to(:article) }
  end

  context 'logic method' do
    it 'creasing like' do
      article = Article.create!(title: 'article test', post_at: Time.current)
      text = Text.create!(headline: 'text headline', position: 2, paragraph: 'text paragraph abc', article: article)
      text.increase_like
      expect(text.like).to eq 1
    end
  end
end
