require_relative 'spec_helper'

describe "routes" do

  #this is something that Rack::Test needs defined
  #in order to run tests against the Sinatra App
  def app
    TestApp
  end

  it "handles GET to /" do
    #get is a helper from Rack::Test
    #which is included in spec_helper
    get '/'
    #be_ok is a helper from Rack::Test
    expect(last_response).to be_ok
    #last_response.be_ok is the equivalent
    #of checking for HTTP status code 200
    expect(last_response.status).to eq(200)
  end

  it "handles POST to /" do
    post '/'
    expect(last_response).to be_ok
  end

  it "handles GET to /about" do
    get '/about'
    expect(last_response).to be_ok
  end

  it "handles GET to /hello" do
    get '/hello'
    expect(last_response).to be_ok
  end
end
