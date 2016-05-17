class Survey < ActiveRecord::Base
    has_many :cats, dependent: :destroy
    accepts_nested_attributes_for :cats
end
