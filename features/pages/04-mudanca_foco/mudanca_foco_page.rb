class Mudanca_foco < SitePrism::Page

    element :abrir, 'a[class="waves-light btn modal-trigger"]'
    elements :el_alerts, 'button[class="btn  waves-light green"]'

    def abrir_modal
        abrir.click
    end

    def abrir_aba
        find('div.center > a').click
        janela = page.driver.browser.window_handles.last
        page.driver.browser.switch_to.window(janela)
    end

    def abrir_alerts(tipo)
        case tipo
        when 'Js Alert'
            el_alerts[0].click
        when 'Js Confirm'
            el_alerts[1].click
        when 'Js Prompt'
            el_alerts[2].click
        else
            raise 'Digite um nome de um botão alert válido'
        end
    end


end