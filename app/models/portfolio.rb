class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  # クラスメソッド
  def self.angular
    where(subtitle: 'Angular')
  end
  # カスタムスコープ
  scope :ruby_on_rails_portfolio_item, -> { where(subtitle: 'Ruby on Rails') }
end
