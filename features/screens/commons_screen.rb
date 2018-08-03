class Geral <Calabash::ABase

  def initialize
      @elemnto_validar_texto = "* id:'imageView2'"
  end
  def validar_texto(timeout=30)
    wait_for_elements_exist([@elemnto_validar_texto], :timeout => timeout)
  end
end
