class Cadastro <Calabash::ABase

  def initialize
      @clicar_criar_conta = "* id:'link_signup'"
      @elemento_preencher_nome = "* id:'input_name'"
      @elemento_preencher_cpf = "* id:'input_cpf'"
      @elemento_preencher_senha = "* id:'input_password'"
      @elemento_clicar_criar_nova_conta = "* id:'btn_signup'"
  end
  def clicar_criar_novaconta
      hide_soft_keyboard
      touch(@clicar_criar_conta)
  end
  def preencher_nome(nome,timeout=10)
      wait_for_elements_exist([@elemento_preencher_nome], :timeout => timeout)
      touch(query(@elemento_preencher_nome))
      keyboard_enter_text(nome)
      hide_soft_keyboard
  end
  def preencher_cpf(cpf,timeout=10)
      wait_for_elements_exist([@elemento_preencher_cpf], :timeout => timeout)
      touch(query(@elemento_preencher_cpf))
      keyboard_enter_text(cpf)
      hide_soft_keyboard
  end
  def preencher_senha(senha,timeout=10)
      wait_for_elements_exist([@elemento_preencher_senha], :timeout => timeout)
      touch(query(@elemento_preencher_senha))
      keyboard_enter_text(senha)
      hide_soft_keyboard
  end
  def clicar_criar_conta(timeout=10)
      wait_for_elements_exist([@elemento_clicar_criar_nova_conta], :timeout => timeout)
      touch(query(@elemento_clicar_criar_nova_conta))
      hide_soft_keyboard
  end
  def realizar_cadastro(nome,cpf,senha)
      self.preencher_nome(nome)
      self.preencher_cpf(cpf)
      self.preencher_senha(senha)
  end
end
