class Notice < ApplicationRecord
  CATEGORIES = %w[General Event Job Other].freeze

  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 500 }
  validates :author_name, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  # Pinned first, then by newest
  scope :ordered, -> { order(pinned: :desc, created_at: :desc) }
end