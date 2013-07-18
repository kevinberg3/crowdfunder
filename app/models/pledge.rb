class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  
  validates_presence_of :user, on: :create
  validates_presence_of :project, on: :create
  validates_presence_of :amount, message: 'is not a number' 
  validates :amount, numericality: { only_integer: true, message: 'is not a number' }
  validates :amount, numericality: { greater_than: 0, message: 'must be greater than 0'}

end

