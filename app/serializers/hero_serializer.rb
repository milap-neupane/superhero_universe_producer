class HeroSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name
  attribute :weakness_array, key: :weakness
  attribute :powers_array, key: :powers
  attributes :fka, :universe

  def weakness_array
    object.weakness&.split(', ')
  end

  def powers_array
    object.powers&.split(', ')
  end
end
