require 'rails_helper'

describe 'events tests', type: :request do
  
  it 'events all' do
    
    get "http://127.0.0.1:3000"

    expect(JSON.parse(response.body).size).to_be eql(1)
  
  end

end