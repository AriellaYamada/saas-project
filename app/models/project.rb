class Project < ActiveRecord::Base
  belongs_to :tenant
	validates_uniqueness_of :title
	validate :free_plan_can_only_have_one_project
end
