class Pomodoro < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  accepts_nested_attributes_for :project
end
