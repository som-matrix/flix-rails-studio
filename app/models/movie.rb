class Movie < ApplicationRecord

    def self.hits
      where('total_gross >= 300000000').order(total_gross: :desc)
    end

    def flop?
        total_gross.blank? || total_gross < 335000000
    end
end
