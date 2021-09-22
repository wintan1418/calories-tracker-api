class ReadingSerializer < ActiveModel::Serializer
  attributes :id, :meal, :calorie_measure, :user, :date
end
