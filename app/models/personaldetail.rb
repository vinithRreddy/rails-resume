class Personaldetail < ApplicationRecord
    belongs_to :user
  has_many :skills, dependent: :destroy
  has_many :languages, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_many :work_experiences, dependent: :destroy
  accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :additional_informations, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :educations, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :work_experiences, reject_if: :all_blank, allow_destroy: true
  validates :user_id, presence: true
end
