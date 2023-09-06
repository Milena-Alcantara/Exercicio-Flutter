import 'Peca.dart';

class GuardaVolumes{

  Map<int, List<Peca>> dicionario = {};
  int contador = 1;

  int guardarPecas(List<Peca> listaDePeca) {
    dicionario[contador] = listaDePeca;
    return contador++;
  }

  void mostrarPecas() {
    dicionario.forEach((numero, pecas) {
      print("Número: $numero");
      pecas.forEach((peca) {
        print("Marca: ${peca.marca}, Modelo: ${peca.modelo}");
      });
    });
  }

  void mostrarPecasPorNumero(int numero) {
    if (dicionario.containsKey(numero)) {
      print("Número: $numero");
      dicionario[numero]!.forEach((peca) {
        print("Marca: ${peca.marca}, Modelo: ${peca.modelo}");
      });
    } else {
      print("Número não encontrado.");
    }
  }

  void devolverPecas(int numero) {
    if (dicionario.containsKey(numero)) {
      dicionario.remove(numero);
      print("Peças do número $numero removidas com sucesso.");
    } else {
      print("Número não encontrado.");
    }
  }
}