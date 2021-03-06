# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :name, uniqueness: true
  # validates :bikeType, presence: true
end
