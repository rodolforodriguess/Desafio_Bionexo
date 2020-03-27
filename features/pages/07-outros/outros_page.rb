class Outros < SitePrism::Page

    def scroll(where)
        if where.include?('Meio')
            page.execute_script("window.scrollTo(0,document.body.scrollHeight/2)")
        else
            page.execute_script("window.scrollTo(0,document.body.scrollHeight)")
        end
    end 

    def basic_authentication(user, password)
        uri = URI.parse(current_url)
        uri.user = user
        uri.password = password
        visit uri
    end

    def fazer_upload
        @foto = File.absolute_path("./features/fixtures/bike.jpg")
        attach_file("upload", @foto, make_visible: true)
    end
end