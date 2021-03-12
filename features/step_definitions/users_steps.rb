Dado('possuir o primeiro id da consulta de users') do
    users_response = users.get_users
    expect(users_response.code).to eql 200

    $primeiro = users_response['data'][0]
end

Quando('enviar requisição para o endpoint users passando name com o valor {string}') do |name|
    $response = users.get_users_by_name(name)
    response_evidence($response)
end

Quando('enviar requisição para o endpoint posts do users passando o id do usuário') do
    $response = users.get_users_posts($primeiro['id'])
    response_evidence($response)
end
  

Então('retornar status_code {int}') do |status_code|
    expect($response.code).to eql status_code
end
  
Então('retornar no response o name de todos os registros contendo {string}') do |name|
    for i in 0..$response['data'].length - 1 do
        expect($response['data'][i]['name']).to include name
    end
end

Então('retornar no response o correspondente do id consultado') do
    expect($response['data'].length).to be >= 1 
end