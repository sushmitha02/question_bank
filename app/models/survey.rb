class Survey < ApplicationRecord
	has_many :questions
	accepts_nested_attributes_for :questions, reject_if: proc { |attributes| attributes['content'].blank? }, allow_destroy: true
end
