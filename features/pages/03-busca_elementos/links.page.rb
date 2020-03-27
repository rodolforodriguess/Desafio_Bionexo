class Links < SitePrism::Page

    def selecionar_link(link)
        find("div.navbar-fixed+div > div:nth-child(2) a", text: link).click
    end

end