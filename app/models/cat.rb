class Cat < ActiveRecord::Base
    enum location_prompting_visit: [:before,:after,:both]
    enum state: [:MN, :WI, :IA,:ND,:Other]
    belongs_to :survey
    belongs_to :user
    belongs_to :after_type,     class_name: 'LocationType', foreign_key: 'after_type_id'
    belongs_to :before_type,    class_name: 'LocationType', foreign_key: 'before_type_id'
    validates :after_type_id, presence: true
    validates :before_type_id, presence: true
    validates :before_street, presence: true
    validates :before_city, presence: true
    validates :before_state, presence: true
    validates :before_zip, presence: true, format: { with: /\A\d{5}(-\d{4})?\z/, message: "Must be a zip code, Use 99999 to look up later" }
    validates :after_city, presence: true
    validates :after_state, presence: true
    validates :after_zip, presence: true, format: { with: /\A\d{5}(-\d{4})?\z/, message: "Must be a zip code.  Use 99999 to look up later" }
    validates :before_type_id, presence: true
    validates :location_prompting_visit, presence: true
    validates :amount_spent_today, presence: true
    private

        def validate_card
            unless credit_card.valid?
                errors.add(:credit_card,  "your message")
            end
        end
end
