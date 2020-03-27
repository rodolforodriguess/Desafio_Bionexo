class Dados_usuario < SitePrism::Page

    def retornar_dados_user 
        dados = []
        total = all("div[class='row']:nth-of-type(3) p").count
        1.upto(total) { |el| dados << find("div[class='row']:nth-of-type(3) p:nth-of-type(#{el})").text }
        return dados
    end



end