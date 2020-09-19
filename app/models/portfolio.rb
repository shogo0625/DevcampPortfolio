class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  # クラスメソッド
  def self.angular
    where(subtitle: 'Angular')
  end
  # カスタムスコープ
  scope :ruby_on_rails_portfolio_item, -> { where(subtitle: 'Ruby on Rails') }
  # newメソッドでインスタンス作成時に呼ばれるコールバック
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.jp/600x400.png"
    self.thumb_image ||= "http://placehold.jp/350x200.png"
  end
end
