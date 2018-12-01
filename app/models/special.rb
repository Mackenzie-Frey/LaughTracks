class Special < ActiveRecord::Base
  belongs_to :comedians

  validates :title, presence: true
  validates :length, presence: true

  def self.average_length
    Special.average(:length)
  end
end
