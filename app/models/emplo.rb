class Emplo < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :section, presence: true

end
