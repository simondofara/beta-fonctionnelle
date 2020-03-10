class Item < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, presence: true

  has_many :item_carts
  has_many :carts, through: :item_carts

  private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
