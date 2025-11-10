module Employee
    include HTTParty
    base_uri "http://dummy.restapiexample.com/api/v1"
    format :json
    headers 'Content-Type': 'application/json'
    # headers 'Content-Type': 'application/json', 'Authorization': 'Bearer token_value'
    # @token = HTTParty.post('http://example.com/api/authenticate')
    # headers 'Content-Type': 'application/json', 'Authorization': 'Bearer ' + @token.parserd_response['token'].to_s
end