class Album < ApplicationRecord
  belongs_to :artist
  
  validates :title, presence: true,
          length: { minimum: 2 }
  validates_inclusion_of :rating, :in => 0..5
  validates_inclusion_of :year, :in => 1900..2030
  validates_inclusion_of :condition, :in => 0..10
end
