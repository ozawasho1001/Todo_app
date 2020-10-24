class Todo < ApplicationRecord
  validates :time, presence: true
  validates :place, presence: true
  validates :todo, presence: true
  validates :memo, presence: true
end
