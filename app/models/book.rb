class Book < ApplicationRecord
    def self.all_genres ; %w[Science\ fiction Drama Action\ and\ Adventure Romance Mystery Horror] ; end #  shortcut: array of strings
    validates :title, :presence => true
    validates :genre, :presence => true
    validates :publish_date, :presence => true
    validate :isbn_number_1967 # uses custom validator below
    validates :genre, :inclusion => {:in => Book.all_genres},
    :unless => :grandfathered?
  
    def isbn_number_1967
      errors.add(:publish_date, 'must be 1967 or later') if
        publish_date && publish_date < Date.parse('1 Jan 1967')
        @@grandfathered_date = Date.parse('1 Nov 1968')

        def grandfathered?
          publish_date && publish_date < @@grandfathered_date
        end
    end
  end