class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    validates :time, numericality: { greater_than: 0}
    validates :time, numericality: {less_than: 24} 
end
