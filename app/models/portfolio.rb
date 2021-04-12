class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    # default after new
    # self.main_image ||= "http://placehold.it/600x200"
    self.main_image = "http://placehold.it/600x200" if main_image==nil
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end