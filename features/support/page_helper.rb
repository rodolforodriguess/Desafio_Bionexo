
# Modulo para chamar as classes instanciadas das pages
#Exemplo: Na chamada dos cenários usar: page.nome_do_método

module Pages

    def homepage
      home ||= Home.new
    end

    def criar_usuario
      criar_usuario ||= Criar_usuario.new
    end

    def lista_usuario
      lista_usuario ||= Lista_Usuario.new
    end

    def user_data
      user_data ||= Dados_usuario.new 
    end

    def links_instance
      links_instance ||= Links.new
    end

    def botoes_inst
      botoes_inst ||= Botoes.new
    end

    def dropdown_inst
      dropdown_inst ||=  Dropdown.new
    end

    def inputText_inst
      inputText_inst ||= InputTextField.new
    end

    def radiocheck_inst
      radiocheckbox ||= RadioCheck.new
    end

    def texto_inst
      texto_inst ||= Textos.new
    end

    def tabela_inst
      tabela_inst ||= Tabela.new
    end

    def widgets_inst
      widgets_inst ||= Widgets.new
    end

    def iteracoes_inst
      iteracoes_inst ||= Iteracoes.new
    end

    def outros_inst
      outros ||= Outros.new
    end

    def mudancaFoco_inst
      mudancaFoco_inst ||= Mudanca_foco.new
    end





end

