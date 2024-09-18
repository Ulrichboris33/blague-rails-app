class Drole < ApplicationRecord

    validates :nom, presence: true
    validates :contenu, presence: true 
    validates :auteur, presence: true

end
