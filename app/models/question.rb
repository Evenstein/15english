# frozen_string_literal: true

# class question
class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  belongs_to :questionable, polymorphic: true
  belongs_to :lesson, optional: true
  belongs_to :test_level, optional: true
  accepts_nested_attributes_for :answers
end
