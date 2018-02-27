class Login < SitePrism::Page
    set_url "https://www.centauro.com.br/"

    element :login, '.user-greeting-login'
    element :btncadastrar, '#optNoclient'
    element :email, '#input-type-1'
    element :cep, '#input-type-3'
    element :btnl, '#btn_cadastrar'
    element :nome, '#fisica-nome'
    element :sobrenome, '#fisica-sobrenome'
    element :rg, '#fisica-rg'
    element :cpf, '#cpf-nregister'
    element :dtnasc, '#date-nregister'
    element :sexo, 'select "sexo", from => "Masculino"'
    element :dddf, '#fisica-telefone-fixo-ddd'
    element :telf, '#fisica-telefone-fixo'
    element :dddc, '#fisica-telefone-adicional-ddd'
    element :telc, '#fisica-telefone-celular'
    element :senha, '#fisica-senha'
    element :confsenha, '.w-125-nregister.r10-nregister.error'
    element :nro, '.w-70-nregister.r13-nregister.error'
    element :btcad, '#bt-submit-fisica'
    element :prod, '#sli_search_1'
    element :pesq, '.sli_ac_image'
    element :cmp, '.form-submitRed.large.buy.available'
        

    def initialize
    end

    def login_cadastrar
        login.click
        sleep 5
    end

    def btn_cadastrar
        btncadastrar.click
        email.set Faker::Internet.email
        cep.click
        cep.set '05038090'
        btnl.click
        $nome = Faker::Name.first_name 
        nome.set $nome
        sobrenome.set Faker::Name.last_name
        rg.set Faker::Number.number(9)
        cpf.set Faker::CPF.numeric
        dtnasc.click
        dtnasc.set '26101989'
        find(:select, "sexo").first(:option, "Masculino").select_option
        ##dddf.set Faker::Number.number(2)
        dddf.click
        dddf.set '11'
        #telf.set Faker::Number.number(8)
        telf.click
        telf.set '20324578'
        #dddc.set Faker::Number.number(2)
        dddc.click
        dddc.set '11'
        #telc.set Faker::Number.number(9)
        telc.click
        telc.set '96314785'
        senha.set '123'
        confsenha.click
        confsenha.set '123'
        nro.set Faker::Number.number(4)
        btcad.click                
        sleep 5
                
    end

    def buscar_produto
        prod.click
        prod.set '8785432Y'
        pesq.click
        cmp.click
        sleep 5
    end

    
       

end

