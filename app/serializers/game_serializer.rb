class GameSerializer < ActiveModel::Serializer
  attributes :id, :total_points, :difficulty, :category, :user_id
end
