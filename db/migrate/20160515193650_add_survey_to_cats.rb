class AddSurveyToCats < ActiveRecord::Migration
  def change
    add_reference :cats, :survey, index: true, foreign_key: true
  end
end
