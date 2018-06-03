require 'csv'

class Artist < ApplicationRecord
    has_many :albums

    validates :name, presence: true,
                    length: { minimum: 2 }
    validates :genre, presence: true

    def self.to_csv
        column_names = %w(id name year_range album_count )

        CSV.generate(headers: true) do |csv|
            csv << column_names

            all.each do |artist|
                csv << column_names.map{ |attr| artist.send(attr)}
            end
        end
    end

    def year_range
        years = albums.map{ |album| album.year}.minmax
        if years[0] == years[1]
            years[0]
        else
            "#{years[0]}-#{years[1]}"
        end
        # years.minmax
    end

    def album_count
        albums.size
    end

end
