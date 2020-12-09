class Dota2::HeroesAdapter < Dota2::BaseAdapter
  def execute
    ::Dota2::Deserializers::CommonInfo.new serializer_params
  end

  private

  def serializer_params
    execute_request ::Dota2::Serializers::CommonInfo.new params
  end

  def params
    {
      uri: '/heroes',
      method: :get
    }
  end
end