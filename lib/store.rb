require_relative './validator.rb'

class Store < ActiveRecord::Base
  has_many :employees
  include ActiveModel::Validations
  validates_with MyValidator
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0, message: "Store must have an annual income greater than 0" }
  validates_associated :employees
end
