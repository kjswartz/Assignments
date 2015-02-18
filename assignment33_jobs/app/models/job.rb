# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  company     :string
#  location    :string
#  title       :string
#  description :text
#  duties      :text
#  experience  :text
#  education   :text
#  posted      :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Job < ActiveRecord::Base
  has_many :applicants
  validates_associated :applicants
  validates :company, presence: true, length: { minimum: 2 }
end
