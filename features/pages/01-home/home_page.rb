class Home < SitePrism::Page

    #setando a url de acesso a HomePage.
    set_url ''

    def clicar_submenu(submenu)
        find('ul a[data-method="get"]', text: submenu ).click
    end

    def click_menu(menu)
        find('a', text: menu).click
    end



end