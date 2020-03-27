class Widgets < SitePrism::Page

    element :input_date, '#datepicker'
    elements :mes_ano, 'div.selects-container > div'
    element :options, 'ul[id*="select-options"]'
    element :btn_ok, 'button.btn-flat.datepicker-done.waves-effect'
    element :input_estado, '#autocomplete-input'
    element :label, 'label[for="autocomplete-input"]'
    elements :colapsable_el, 'div.collapsible-header > i'

    
    def selecionar_data(ano, mes, dia)
        input_date.click
        mes_ano[1].click
        wait_until_options_visible
        find("iframe+div+ul li span", text: ano).click
        mes_ano[0].click
        wait_until_options_visible
        find("iframe+div+ul+ul li span", text: mes).click   
        find("tbody td > button[data-pika-day='#{dia}']").click
        btn_ok.click
    end

    def escolher_estado(estado)
        input_estado.set estado
        find('#autocomplete-input+ul span span', text: estado).select_option
    end

    def colapsable(tipo)
        case tipo
        when 'First'
            colapsable_el[0].click
        when 'Second'
            colapsable_el[1].click
        when 'Third'
            colapsable_el[2].click
        end
    end


end