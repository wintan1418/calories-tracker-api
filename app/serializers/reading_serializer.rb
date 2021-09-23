class ReadingSerializer < ActiveModel::Serializer
  attributes :id, :meal, :calorie_measure, :user, :date
  belongs_to :user
end
