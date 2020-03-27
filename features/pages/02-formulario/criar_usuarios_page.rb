class Criar_usuario < SitePrism::Page
 
    element :nome, '#user_name'
    element :ultimo_nome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, 'input[name="user[profile]"]'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :criar, 'input[value="Criar"]' 
    element :voltar, 'a[class="btn waves-light red"]'
    
    def initialize
        @name_user = Faker::Name.name; @ultimoNomeUser = Faker::Name.last_name
        @email_user = Faker::Internet.email;  @endereco_user = Faker::Address.full_address
        @univ_user = Faker::University.name; @prof_user = Faker::Job.title
        @genero_user = Faker::Gender.binary_type; @idade_user = rand(10).to_s
    end

    attr_accessor :name_user, :ultimoNomeUser, :email_user, :endereco_user, :univ_user,
    :prof_user, :genero_user, :idade_user


    def preencher_user
        user = []
        nome.set name_user
        ultimo_nome.set ultimoNomeUser
        email.set email_user
        universidade.set univ_user
        genero.set genero_user
        profissao.set prof_user
        idade.set idade_user
        endereco.set endereco_user
        criar.click
        user << name_user << ultimoNomeUser << email_user << univ_user << genero_user << prof_user << idade_user << endereco_user
    end





end