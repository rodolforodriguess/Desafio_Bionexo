class InputTextField < SitePrism::Page
    
    element :first_name, '#first_name'
    element :last_name, '#last_name'
    element :password,  '#password'
    element :email, '#email'
    element :textarea, '#textarea1'

    def preencher_fields
        first_name.set Faker::Name.name
        last_name.set Faker::Name.last_name
        password.set Faker::Alphanumeric.alpha(number: 10)
        email.set Faker::Internet.email
        textarea.set Faker::Military.army_rank
    end

end