class Dota2::HeroesAdaptee
  def execute_request request
    RestClient::Request.execute(method: request.method,
                                url: 'https://api.opendota.com/api' + request.uri)
  rescue RestClient::ExceptionWithResponse => e
    e.response
  end

  def handle_result
    adapter_result = Dota2::Deserializers::CommonInfo.new serializer_params
    raise StandandError, adapter_result.errors_message if adapter_result.fail?

    adapter_result
  end
end