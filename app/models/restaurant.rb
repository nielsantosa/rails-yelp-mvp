class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category,  presence: true,
                        inclusion: {
                          in: %w[belgian japanese italian french chinese],
                        }

  has_many :reviews, dependent: :destroy
end
