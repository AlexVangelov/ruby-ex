require 'alexa_rubykit'

class Alexa 
  def call(env)
    response = AlexaRubykit::Response.new
    response.add_speech('Ruby is running ready!')
    [200, {"Content-Type" => "application/json"}, [response.build_response]]
  end
end