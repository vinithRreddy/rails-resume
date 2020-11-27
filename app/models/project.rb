class Project < ApplicationRecord
    belongs_to :user
    NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at", "URL"]
    VALIDATABLE_ATTRS = Project.attribute_names.reject{|attr| NON_VALIDATABLE_ATTRS.include?(attr)}
    validates_presence_of VALIDATABLE_ATTRS
end
