class Lista_Usuario < SitePrism::Page

    def retornar_user_lista(linha_posicao)
        dados = []
        total = all("tbody > tr:nth-child(#{linha_posicao}) > td").count
        num = 0
        while num < total - 3
            dados << find("tbody > tr:nth-child(#{linha_posicao}) > td:nth-child(#{num+1})").text
            num += 1
        end
        return dados
    end

     def editar_usuario(user_posicao)
        find("tr:nth-of-type(#{user_posicao}) td:nth-of-type(10) > a").click
    end
    
    def acoes_usuario(user_posicao, tp_acao)
        case tp_acao
        when 'Excluir'
            find("tr:nth-of-type(#{user_posicao}) td:nth-of-type(11) > a").click
        when 'Visualizar'
            find("tr:nth-of-type(#{user_posicao}) td:nth-of-type(9) > a").click
        when 'Editar'
            find("tr:nth-of-type(#{user_posicao}) td:nth-of-type(10) > a").click
        end
    end



end