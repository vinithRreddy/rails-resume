class Skill < ApplicationRecord
    belongs_to :user

    validates :percent, :numericality => { :only_integer => true }
    validates :percent, :numericality => { :less_than_or_equal_to => 100}
end
