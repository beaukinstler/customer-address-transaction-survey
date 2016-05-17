class Cat < ActiveRecord::Base
    enum location_prompting_visit: [:before,:after,:both]
    enum state: [:MN, :WI, :IA,:ND,:Other]
    enum location_type: [:H,:W,:S,:SCHOOL,:O]
    belongs_to :survey
    belongs_to :user

end
