class Login < Calabash::ABase

    def initialize
        @elemento_preencher_cpf_login = "* id:'input_cpf'"
        @elemento_preencher_senha_login = "* id:'input_password'"
        @elemento_clicar_btn_login = "* id:'btn_login'"
    end

    def preencher_cpf_login(cpf_login,timeout=10)
        wait_for_elements_exist([@elemento_preencher_cpf_login], :timeout => timeout)
        keyboard_enter_text cpf_login
        hide_soft_keyboard
    end
    def preencher_senha_login(senha_login,timeout=10)
        wait_for_elements_exist([@elemento_preencher_senha_login], :timeout => timeout)
        touch(query(@elemento_preencher_senha_login))
        keyboard_enter_text senha_login
        hide_soft_keyboard
    end
    def clicar_btn_login(timeout=10)
        wait_for_elements_exist([@elemento_clicar_btn_login], :timeout => timeout)
        touch(query(@elemento_clicar_btn_login))
    end
end
