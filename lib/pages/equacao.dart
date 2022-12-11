class Equacao {
  late String variedade;
  late String operacoes;
  late String perdas;
  late String solo;
  late String dados;
  late double resultado = 0;

  calculing(String variedade, String operacoes, String solo, String perdas,
      String dados) {
    //return "Perdas por hectare: $resultado";
    return "$variedade - $operacoes - $solo - $perdas - $dados";
  }
}
