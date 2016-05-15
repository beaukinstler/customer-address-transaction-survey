class Survey < ActiveRecord::Base
    has_many :cats, dependent: :destroy
end
