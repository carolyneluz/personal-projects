# Movie Catalog

Essa aplicação, desenvolvida em Ruby on Rails, permite gerenciar e visualizar um catálogo de filmes. O sistema permite cadastrar, editar e listar gêneros de filmes, diretores e os próprios filmes, além de associar diretores a filmes e gêneros. A aplicação também permite ver detalhes de cada filme, listar filmes por gênero e diretor.

## Funcionalidades

- **Cadastrar e editar gêneros:** Registre e edite gêneros dos filmes (como ação, comédia, drama, etc.).
- **Cadastrar e editar diretores:** Adicione diretores com informações como nome, nacionalidade, data de nascimento e gênero favorito.
- **Cadastrar e editar filmes:** Adicione informações completas de filmes, como título, ano de lançamento, sinopse, duração, país de origem, diretor e gênero.
- **Listar gêneros e filmes por gênero:** Exiba uma lista de todos os gêneros e veja os filmes associados a cada gênero.
- **Listar diretores e filmes por diretor:** Exiba uma lista de diretores e veja os filmes dirigidos por cada um.
- **Listar todos os filmes:** Exiba todos os filmes cadastrados, exibindo apenas o título e ano de lançamento, com link para os detalhes completos de cada filme.

## Requisitos

- **Ruby version:** 3.1.2
- **Rails version:** 7.2.1
- **Dependências:**
  - **Banco de dados:** SQLite3 (padrão para ambientes de desenvolvimento)
  - **Node.js e Yarn** (para assets)

## Instalação

1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
    cd movie_catalog
    ```

2. Instale as dependências:
    ```bash
    bundle install
    yarn install
    ```

3. Configure o banco de dados:
    ```bash
    rails db:create
    rails db:migrate
    ```

4. (Opcional) Popule o banco de dados com dados iniciais:
    ```bash
    rails db:seed
    ```

5. Inicie o servidor:
    ```bash
    rails server
    ```

6. Acesse a aplicação no navegador:
    ```
    http://localhost:3000
    ```
