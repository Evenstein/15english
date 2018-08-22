# frozen_string_literal: true

# class question
class Question < ApplicationRecord
  has_many :answers
  belongs_to :questionable, polymorphic: true
  belongs_to :lesson, optional: true
  accepts_nested_attributes_for :answers
end