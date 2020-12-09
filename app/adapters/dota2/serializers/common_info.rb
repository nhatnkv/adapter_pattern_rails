class Dota2::Serializers::CommonInfo
  attr_reader :method_request, :uri_request, :body_request

  def initialize(args)
    @method_request = args[:method]
    @uri_request = args[:uri]
    @body_request = args[:body]
  end

  def uri
    uri_request
  end

  def method
    method_request
  end

  def body
    body_request.to_json
  end
end