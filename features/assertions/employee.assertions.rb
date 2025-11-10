class Assertions

    def request_sucess(status_code, response_message)
        expect(status_code).to eql 200
        expect(response_message).to eql "OK"
    end

end