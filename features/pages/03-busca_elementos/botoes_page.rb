class Botoes < SitePrism::Page
    
    element :raised, '#teste'
    element :floating, 'a[onclick="ativaedesativa2()"]'
    element :flat, 'a[onclick="ativaedesativa3()"]'
    element :submmit, 'button[onclick="ativaedesativa4()"]'



    def clicar_botao(tipo)
        case tipo
        when 'Raised'
            raised.click
        when 'Floating'
            floating.click
        when 'Flat'
            flat.click
        when 'Submmit'
            submmit.click
        end
    end

    def enable_button
        page.execute_script("document.querySelector('a[class=\"btn-large disabled\"]').setAttribute(\"class\", \"btn-large enabled\")")
    end

end