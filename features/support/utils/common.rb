def response_evidence(payload)
    if (ENV["evi"] == "y")
        puts "Request URI: #{payload.request.uri}"
        puts "Response Code: #{payload.code}\n"
        if payload.body != ''
            puts "Response Body: #{JSON.pretty_generate(JSON.parse(payload.body))}"
        else 
            puts "Response Body: não possui body" 
        end
    end
end