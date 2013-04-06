class TeamMembership < ActiveRecord::Base
  # attr_accessible
  belongs_to :team
  belongs_to :user
end
