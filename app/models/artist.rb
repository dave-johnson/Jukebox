require 'csv'

class Artist < ApplicationRecord
    has_many :albums

    validates :name, presence: true,
                    length: { minimum: 2 }
    validates :genre, presence: true

    def self.to_csv
        column_names = %w(id name year_range album_count common_word)

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
    end

    def album_count
        albums.size
    end

    def common_word
        word_list = {}
        albums.each do |album|
            album.title.split(" ").each do |word|
                word_list[word] ||= 0
                word_list[word] += 1
            end
        end
        word_list

        word = ""
        count = 0 
        word_list.each do |k, v|
            if v > count
                word = k 
                count = v
            elsif v == count && (k < word || word == "")
                word = k 
            end
        end
        if count > 1
            "#{word} - #{count}"
        else
            word
        end
    end


end
