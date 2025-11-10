## cenario_get
Dado('que o usuario consulte informacoes de funcionario') do
  @getlist = Employee_Requests.new
  @assert = Assertions.new
end

Quando('ele realizar a pesquisa') do
  @list_employee = @getlist.find_employee
end

Entao('uma lista de funcionariso deve ser retornada') do
  @assert.request_sucess(@list_employee.code, @list_employee.message)
end 






## cenario_post
Dado('que o usuario informe os dados do novo funcionario') do
  @create = Employee_Requests.new
  @assert = Assertions.new
  # @name = Faker::Name.name
  # @salary = Faker::Number.number.to_s
  # @age = Faker::Number.number(digits: 2).to_s
  # puts @name
  # puts @salary
  # puts @age
end

Quando('ele enviar as informações do funcionário') do
  @create_employee = @create.create_employee(DATABASE[:name][:name1], DATABASE[:salary][:salary1], DATABASE[:age][:age1])
end

Entao('esse funcionario sera cadastrado') do
  @assert.request_sucess(@create_employee.code, @create_employee.message)
  expect(@create_employee["status"]).to eql "success"
  expect(@create_employee['data']["name"]).to eql DATABASE[:name][:name1]
  expect(@create_employee['data']["salary"]).to eql DATABASE[:salary][:salary1]
  expect(@create_employee['data']["age"]).to eql DATABASE[:age][:age1]
end






## cenario_put
Dado('que o usuario informe os dados atualizados do funcionario') do
  @request = Employee_Requests.new
  @assert = Assertions.new
end

Quando('ele enviar as informações atualizadas do funcionário') do
  # @update_employee = @request.update_employee(@request.find_employee['data'][0]['id'], DATABASE[:name][:name2], DATABASE[:salary][:salary2], DATABASE[:age][:age1])
  @update_employee = @request.update_employee(1, DATABASE[:name][:name2], DATABASE[:salary][:salary2], DATABASE[:age][:age1])
end

Entao('as informações do funcionario serao atualizadas') do
  @assert.request_sucess(@update_employee.code, @update_employee.message)
  expect(@update_employee['status']).to eql "success"
  expect(@update_employee['data']["employee_name"]).to eql DATABASE[:name][:name2]
  expect(@update_employee['data']["employee_salary"]).to eql DATABASE[:salary][:salary2]
  expect(@update_employee['data']["employee_age"]).to eql DATABASE[:age][:age1]
end






## cenario_delete
Dado('que o usuario queira deletar o cadastro de um funcionario') do
  @delete = Employee_Requests.new
  @assert = Assertions.new
end

Quando('ele enviar a solicitação de exclusão com o ID do funcionario') do
  # @delete_employee = @delete.delete_employee(@request.find_employee['data'][0]['id'])
  @delete_employee = @delete.delete_employee(1)
end

Entao('o cadastro do funcionario sera deletado') do
  @assert.request_sucess(@delete_employee.code, @delete_employee.message)
  expect(@delete_employee['status']).to eql "success"
  expect(@delete_employee['data']).to eql "1"
  expect(@delete_employee['message']).to eql "Successfully! Record has been deleted"
end