class Special < ActiveRecord::Base
  belongs_to :comedians

  validates :title, presence: true
  validates :length, presence: true
end
