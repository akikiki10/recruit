class Job < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :salary
    validates :working_hours
    validates :place
    validates :catch
  end

  validates :catch, length: { maximum: 30 }

  belongs_to :user
end
