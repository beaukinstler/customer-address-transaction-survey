class LocationType < ActiveRecord::Base
    has_many :cats_after_location,     class_name: "Cat", foreign_key: "after_type_id"
    has_many :cats_before_location,    class_name: "Cat", foreign_key: "before_type_id"
end