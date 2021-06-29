# Loja-FPF
O projeto proposto é uma loja virtual fictícia, a loja faz um cadastro de produtos bem como suas operações de cadastro, edição,exclusão e detalhes.

# Das tecnologias usadas
1 - Banco de dados usamos o Sql Server Management studio 2017.
pode ser baixado neste linq. https://www.microsoft.com/en-us/download/details.aspx?id=55994

2 - Usamos também o Microsoft Visual Studio Community para o desenvolvimento da aplicação Asp.Net.
pode ser baixado neste linq. https://visualstudio.microsoft.com/pt-br/downloads/?rr=https%3A%2F%2Fwww.google.com.br%2F

3 - Também foram usados recursos dos frameworks entity, bootstrap.

4 - Para o repositório foi criada um conta publica no GitHub

# Das Organizações das tasks do projeto.
O projeto teve duração de três dia corridos.
As tarefas foram divididas da seguinte forma:

1 - Dia -> Instalação e configuração das ferramentas para a montagem do ambiente de desenvolvimento(Sql-Server, Visual Studio e conta no GitHub).

2 - Dia -> Estudos de novas tecnologias(12hs), Criando o projeto Asp.Net MVC - Loja Virtual - Desenvolvimento (4hs).

3 - Dia -> Aprimoramentos e testes na aplicação e check in no repositório(8hs), criação do arquivo README(4hs)

# Das instruções para configuração e utilização da aplicação

1 - Instalar o Microsoft Visual Studio Community.

2 - Clicar no linq do repositório enviado por email.

3 - Clicar em clone or download em seguida open in visual studio -> Clicar em abri microsoft Visual.... 

4 - Aguarde o visual studio abrir e carregar as configurações.

5 - Visual studio-> na aba Team Explore e aponte o diretório de pastar que você criou logo acima C:\LojaVirtual -> Clicar em Clonar -> aguarde a baixa dos objetos.

6 - Clicar duas vezes em LojaVirtual.sln (para abrir a solução)

7 - Criar o banco com o arquivo CriarBancosql.sql (criar um nova consulta e Executar o script do aquivo no bancos de dados(master))
  - No arquivo Web.Config atentar para mudar o Data Souce(intancia do sql-server local)
  <connectionStrings>
    <add name="LojaVirtual" connectionString="Data Source=ITB002231N;Initial Catalog=DBFpf;Integrated Security=True" providerName="System.Data.SqlClient" />
  </connectionStrings>

8 - Execute a aplicação dando um start -> cadastre produtos, liste,edite, exclua e veja em detalhes.









