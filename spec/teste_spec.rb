

describe 'Login' do
    before do
        visit 'https://globoplay.globo.com'
        find('.menu-icon').click()
        find('#login-button-Entrar').click()
    end

    context 'Login com sucesso' do
        it 'Login OK' do  
            within('.login-modal') do
                find('#ng-app')
                puts 'deu bom'
            end 
           
        end
    end
    
end