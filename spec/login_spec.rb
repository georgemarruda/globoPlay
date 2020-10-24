

describe 'Login' do
    before do
        visit 'https://login.globo.com/login/4654'
    end

    context 'Login sem sucesso' do
        it 'Senha Inválida!' do            
            fill_in 'login', with: 'georgem.juniore@gmail.com'
            fill_in 'password', with: 'qwert'
            click_button 'Entrar'
            expect(find('.error')).to have_content 'Seu usuário ou senha estão incorretos.'    
        end
        
        it 'email inválido' do
            fill_in 'login', with: 'tests"testes.teste.uk'
            fill_in 'password', with: 'qwert'
            click_button 'Entrar'
            expect(find('.error')).to have_content 'Confira se o login foi digitado corretamente.'   
        end
        
        it 'email vazio' do
            fill_in 'password', with: 'qwert'
            click_button 'Entrar'
            expect(find('.error')).to have_content 'Preencha seu usuário e senha.'   
        end
        
        it 'senha vazia' do
            fill_in 'login', with: 'georgem.juniore@gmail.com'
            click_button 'Entrar'
            expect(find('.error')).to have_content 'Preencha seu usuário e senha.'   
        end
    end    

    context 'Login com sucesso' do
        it 'Login OK' do    
            fill_in 'login', with: 'georgem.juniore@gmail.com'
            fill_in 'password', with: 'Babylon2018'
            click_button 'Entrar'  
        end
    end
    
end