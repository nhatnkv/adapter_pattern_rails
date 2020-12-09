class Dota2::Deserializers::CommonInfo
  attr_reader :response

  def initialize args
    @response = args
  end

  def success?
    status_code.in? [200, 201]
  end

  def fail?
    !success?
  end

  def data
    JSON.parse(response.body, symbolize_names: true)
  end

  def status_code
    response.code
  end

  def errors_message
    data[:error]
  end
end