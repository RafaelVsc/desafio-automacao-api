# language: pt
Funcionalidade: Users

Cenário: Consultar user por parâmetro name
    Quando enviar requisição para o endpoint users passando name com o valor "Naik"
    Então retornar status_code 200
    E retornar no response o name de todos os registros contendo "Naik"

Cenário: Consultar posts por id
    Dado possuir o primeiro id da consulta de users
    Quando enviar requisição para o endpoint posts do users passando o id do usuário
    Então retornar status_code 200
    E retornar no response o correspondente do id consultado