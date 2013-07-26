class Project < ActiveRecord::Base
  belongs_to :user
  has_many :pledges
  has_many :images
  
#   def calculate_total_pledge
#     total = 0
#     @project.pledges.each do |pledge|
#     total += pledge.amount
#     end
#   end

# # set up completion variable to be called for funding
# completion = (calculate_total_pledge.to_f(@project.pledges) / @project.goal) * 100









end
