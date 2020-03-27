class Editar_Usuario < SitePrism::Page
    
    def initialize
        @user_edit_value = ''; @ultimo_edit_value = ''; @email_edit_value = ''; @endereco_edit_value = ''
        @univ_edit_value = ''; @prof_edit_value = ''; @genero_value = ''; @idade_edit_value = ''        
    end

    attr_accessor :user_edit_value, :ultimo_edit_value, :email_edit_value, :endereco_edit_value,
    :univ_edit_value, :prof_edit_value, :genero_value, :idade_edit_value

    
    element :user_edit, '#user_name'
    element :ultimo_nome_edit, '#user_lastname'
    element :email_edit, '#user_email'
    element :endereco_edit, '#user_address'
    element :univ_edit, '#user_university'
    element :prof_edit, '#user_profile'
    element :genero_edit, '#user_gender'
    element :idade_edit, '#user_age'
    element :criar_edit, 'input[value="Criar"]'


    def alterar_usuario 
        user_edit.set user_edit_value unless user_edit_value == ''
        ultimo_nome_edit.set ultimo_edit_value unless ultimo_edit_value == ''
        email_edit.set email_edit_value unless email_edit_value == ''
        endereco_edit.set endereco_edit_value unless endereco_edit_value == ''
        univ_edit.set univ_edit_value unless univ_edit_value == ''
        prof_edit.set prof_edit_value unless prof_edit_value == ''
        genero_edit.set genero_value unless genero_value == ''
        idade_edit.set idade_edit_value unless idade_edit_value == ''
    end

    def confirmar_edicao
        criar_edit.click
    end


end