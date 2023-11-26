Cenário 1: Inserção de e-mail válido na recuperação da conta
Scenario: solicitação de recuperação de conta / senha
Given Um usuário esqueceu sua senha e seleciona a opção "Esqueci a senha" na tela de login.
When O sistema solicita que o usuário insira o e-mail associado à conta.
And O usuário insere um e-mail válido e associado à conta.
Then O sistema processa a solicitação, enviando automaticamente um e-mail com um código de recuperação para o endereço fornecido.
And O usuário recebe um e-mail com sucesso.

Cenário 2: Recuperação de conta com código correto
Scenario: solicitação de recuperação de conta / senha
Given Um usuário recebe um e-mail de recuperação após esquecer a senha.
When O usuário utiliza corretamente o código recebido e o e-mail para acessar uma tela onde pode criar uma nova senha.
And O sistema exige que a nova senha seja diferente da anterior.
Then A senha é atualizada com sucesso e o sistema exibe uma mensagem de confirmação.
