# sistema-livraria-
Sistema de Gestão de Livraria

Descrição 

O Sistema de Gestão de Livraria é uma aplicação web desenvolvida para gerenciar as operações de uma livraria, permitindo o controle de clientes, livros, vendas e estoque. 
O sistema tem como objetivo automatizar processos, reduzir erros e melhorar a organização do negócio. 

-Funcionalidades  
Clientes  
*Cadastrar cliente  
*Listar clientes  
*Buscar por ID, nome ou CPF  
*Atualizar dados  
*Impedir CPF duplicado  
*Impedir exclusão de cliente com vendas  
  
Livros  
*Cadastrar livro  
*Listar livros  
*Atualizar informações  
*Controlar estoque  
*Impedir preço negativo  
*Impedir venda sem estoque  

Vendas  
*Registrar vendas  
*Adicionar múltiplos itens  
*Calcular valor total automaticamente  
*Atualizar estoque após venda  
 
Autenticação  
*Login com usuário e senha  
*Geração de token JWT  

Controle de acesso por perfil:  
*ADMIN  
*FUNCIONARIO  

Relatórios  
*Vendas por período  
*Vendas por cliente  
*Vendas por produto  

 
-Tecnologias Utilizadas  
*Python  
*Django  
*MySQL  
*API REST  
*JWT (Autenticação)  


-Arquitetura  
O sistema segue o padrão de arquitetura em camadas:  
*Controller → Recebe requisições  
*Service → Regras de negócio  
*Repository → Acesso ao banco  
*Banco de Dados → Persistência  

  
-Banco de Dados  
Tabelas principais:  
*usuarios  
*clientes  
*livros  
*vendas  
*itens_venda   


-API REST 
*Autenticação 
*POST /auth/login 

Clientes 
*GET /clientes 
*POST /clientes 
*PUT /clientes/{id} 
*DELETE /clientes/{id} 

Livros 
*GET /livros 
*POST /livros 
*PUT /livros/{id} 
*DELETE /livros/{id} 

Vendas 
*GET /vendas 
*POST /vendas  

-Como Executar o Projeto 

1.Instalar as dependências do projeto 

2.Configurar o banco de dados MySQL 

3.Executar o script de criação das tabelas 

4.Iniciar o servidor da aplicação 

5.Acessar o sistema via navegador 
