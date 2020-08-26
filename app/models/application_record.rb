class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :name, presence: true, allow_nil: false
end
