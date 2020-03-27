class Iteracoes < SitePrism::Page

        element :element1, "#winston"
        element :element2, "#dropzone"
        element :hover, 'span[class="card-title"] p'

        def mover
            element1.drag_to(element2)
        end

        def mouse_hover
            wait_until_hover_visible
            hover.hover
        end

        
end
