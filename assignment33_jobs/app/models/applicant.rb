class Applicant < ActiveRecord::Base
  belongs_to :job
  validates :name, presence: true, length: { minimum: 3 }
  validates :age, presence: true, numericality: { only_integer: true }
end
