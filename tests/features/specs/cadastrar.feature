# language: pt

Funcionalidade: Desafio - Campo de Treinamento
    -Como um QA Automatizador, quero cadastrar um usuário no campo de treinamento.

@validar
Cenario: Campos obrigatórios devem ser preenchidos
Dado que estou no formulario campo de treinamento
E que eu não preencha as informações obrigatórias
Então uma mensagem de validação é exibida. 

Cenario: Cadastrar um usuário com sucesso
Dado que estou no formulario campo de treinamento
E que eu preencha as informações obrigatórias
Quando eu clico em cadastrar
Então eu verifico que o usuário foi cadastrado