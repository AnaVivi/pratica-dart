import 'dart:io';

void main() {
  int numeroCarteira = 0;
  int totalMultas = 0;
  double arrecadadoTot = 0;
  int maiorNumeroMultas = 0;
  int numeroCarteiraMaiorMultas = 0;

  while (true){
     print("Informe o número da carteira de motorista entre 1 e 4327: ");
     numeroCarteira = int.parse(stdin.readLineSync()!);
     if (numeroCarteira < 1 || numeroCarteira > 4327) {
      break; // Condição de parada
    }
    
    print("Informe o número de multas: ");
    int numeroMultas = int.parse(stdin.readLineSync()!);

     print("Informe o valor de cada multa:");
    double valorMulta = double.parse(stdin.readLineSync()!);

    double divida = numeroMultas * valorMulta;
    totalMultas += numeroMultas;
    arrecadadoTot += divida;

    if (numeroMultas > maiorNumeroMultas) {
      maiorNumeroMultas = numeroMultas;
      numeroCarteiraMaiorMultas = numeroCarteira;
    }
    print("A dívida do motorista $numeroCarteira é de: R\$$divida\n");
  }

  print("Total de recursos arrecadados: R\$$arrecadadoTot");
  print("Número da carteira de motorista com mais multas: $numeroCarteiraMaiorMultas");
}