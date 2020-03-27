class Dropdown < SitePrism::Page
    
    element :mail_btn, 'a[class="btn dropdown-button"]'
    elements :dropdown_mail, '#dropdown > li > a'
    element :wait_mail_box, 'a[class="btn dropdown-button active"]'
    elements :selects_open, 'div:nth-child(5) > div > div > input'

    def abrir_mail_box
        mail_btn.click
    end

    def sel_mail_box(texto)
        wait_until_wait_mail_box_visible
        case texto
        when 'Inbox'
            dropdown_mail[0].click
        when 'Unread'
            dropdown_mail[1].click
        when 'Sent'
            dropdown_mail[2].click
        when 'Outbox'
            wait_until_wait_mail_box_visible
            dropdown_mail[3].click
        else
            raise 'Escolha uma outra opção'
        end
    end



    def selects_desenho(texto)
        selects_open[0].click
        find("ul[id*='select-options'] > li > span", text: texto).click
    end

    def select_jogador(texto)
        selects_open[1].click
        find("ul[id*='select-options'] > li > span", text: texto).select_option
    end

    def select_pais(texto)
        selects_open[2].click
        find("ul[id*='select-options'] > li > span", text: texto).select_option
    end

    def select_genero(texto)
        selects_open[3].click
        find("ul[id*='select-options'] > li > span", text: texto).select_option
    end
    
    def select_sexo(texto)
        selects_open[4].click
        find("ul[id*='select-options'] > li > span", text: texto).select_option
    end

end