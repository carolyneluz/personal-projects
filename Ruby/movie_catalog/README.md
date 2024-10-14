Movie Catalog

Essa aplicação desenvolvida em Ruby on Rails permite gerenciar e visualizar um catálogo de filmes. O sistema permite cadastrar, editar e listar gêneros de filmes, diretores e os próprios filmes, além de associar diretores a filmes e gêneros. A aplicação também permite ver detalhes de cada filme, listar filmes por gênero e diretor.

Funcionalidades
Cadastrar e editar gêneros: Registre e edite os gêneros dos filmes (ação, comédia, drama, etc.).
Cadastrar e editar diretores: Adicione diretores com informações como nome, nacionalidade, data de nascimento e gênero favorito.
Cadastrar e editar filmes: Adicione informações completas de filmes, como título, ano de lançamento, sinopse, duração, país de origem, diretor e gênero.
Listar gêneros e ver filmes de cada gênero: Exiba uma lista de todos os gêneros e veja os filmes associados a cada um.
Listar diretores e ver filmes de cada diretor: Exiba uma lista de diretores e veja os filmes dirigidos por cada um.
Listar todos os filmes: Exiba todos os filmes cadastrados, exibindo apenas o título e ano de lançamento, com link para os detalhes completos de cada filme.
Requisitos
Ruby e Rails
Ruby version: 3.1.2
Rails version: 7.2.1
Dependências do sistema
SQLite3 (para banco de dados local)
Node.js e Yarn (para assets)
Instalação
Clone o repositório:
bash
Copiar código
git clone https://github.com/seu-usuario/seu-repositorio.git
Navegue até o diretório do projeto:
bash
Copiar código
cd movie_catalog
Instale as dependências:
bash
Copiar código
bundle install
Instale as dependências do JavaScript:
bash
Copiar código
yarn install
Configure o banco de dados:
bash
Copiar código
rails db:create
rails db:migrate
Popule o banco de dados com dados iniciais (opcional):
bash
Copiar código
rails db:seed
Uso
Para iniciar o servidor da aplicação, execute:
bash
Copiar código
rails server
Acesse a aplicação no navegador em:
arduino
Copiar código
http://localhost:3000
Testes
Para rodar a suíte de testes, utilize o comando:

bash
Copiar código
rails test
Configuração do Banco de Dados
A aplicação usa o SQLite3 por padrão para ambientes de desenvolvimento e testes. Certifique-se de que o banco está configurado corretamente nos arquivos de configuração em config/database.yml.

Desenvolvimento
Para contribuir com o projeto, siga estes passos:

Crie uma branch para suas modificações:
bash
Copiar código
git checkout -b feature/nova-funcionalidade
Após desenvolver, faça o commit de suas alterações:
bash
Copiar código
git commit -m "Descrição das alterações"
Faça o push da sua branch para o repositório remoto:
bash
Copiar código
git push origin feature/nova-funcionalidade
Abra um Pull Request para revisão.
