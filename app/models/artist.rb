class Artist < ApplicationRecord
    has_many :albums

    validates :name, presence: true,
                    length: { minimum: 2 }
    validates :genre, presence: true
end
