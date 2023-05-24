#language: pt

Funcionalidade: Cadastrar contas
  como um usuário autenticado no sistema
  eu quero cadastrar contas
  para que eu possa gerenciar minha vida financeira
  
Contexto: 
  Dado: O usuário está autenticado no sistema
  
Cenário: Cadastro de conta com sucesso
    Dado Acessar a página de cadastro de conta
    E Informar o nome da conta "Conta modelo"
    E Informar o valor da conta "100"
    E Informar a data da conta "01/06/2023"
    E Informar o tipo da conta <tipo>
    E Selecionar a categoria da conta "Despesas em geral"
    E Preencher as observções da conta "Conta gerada por teste"
    Quando Solicitar a realização do cadastro da conta
    Então Sistema informa que a conta foi cadastrada com sucesso
    
Exemplos:
 | tipo              |
 | "Conta a Receber" |
 | "Conta a Pagar"   |
    