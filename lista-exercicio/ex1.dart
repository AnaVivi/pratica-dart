/*A percentagem de pessoas que responderam bom entre todos os expectadores analisados não está funcionando corretamente. Motivo em investigação*/
import 'dart:io';
void main(){
   var expectador = 0;
   var totalIdadeExcelente = 0;
   var quantidadeExcelente = 0;
   var quantidadeRegular = 0; 
   var quantidadeBom = 0; 
   while(expectador <= 20){ //alterar para 20
    print("Pesquisa de satisfação da Cinépolis para o filme  “Senhor dos Anéis”");
    print("Para iniciar, por favor, digite a sua idade: ");
    String? idadeEntrada = stdin.readLineSync();
     if (idadeEntrada != null) {
    int idade = int.parse(idadeEntrada);
    print("Sua idade é ${idade} anos.");
     
    print("Qual a sua opinião do filme? Escolha:\n1 - Regular\n"+ 
    "2 - Bom\n" + "3 - Excelente\n");
    String? input = stdin.readLineSync();
    switch (input){
      case "1":
      print("Sua escolha é $input");
      if (input != null) {
         quantidadeRegular++;
      if (quantidadeRegular > 0) { // Adicione esta parte para exibir a quantidade  de respostas "Regular"
        print("Quantidade de pessoas que responderam 'Regular': $quantidadeRegular");
      } else {
        print("Ninguém respondeu 'Regular'.");
      }
    }
    break;
    case "2": // Não está funcionando corretamente. Motivo ainda em investigação
    print("Sua escolha é $input");
    if (input != null) {
      quantidadeBom ++;
      if (quantidadeBom > 0) { 
        var porcentBom = ((quantidadeBom / expectador) * 100);
        print(porcentBom);
        print("Porcentagem de pessoas que responderam 'Bom': ${porcentBom.toStringAsFixed(2)}%");
        } else {
           print("Ninguém respondeu 'Bom'.");
        }
      }
      break;
      case "3":
      print("Sua escolha é $input");
      if (input != null){
        quantidadeExcelente++;
        if (quantidadeExcelente > 0){
         totalIdadeExcelente += idade; // Adiciona a idade à soma das idades Excelentes 
         double mediaIdadeExcelente = totalIdadeExcelente / quantidadeExcelente;
         print("Média das idades das pessoas que responderam 'Excelente': $mediaIdadeExcelente anos.");
  } else {
    print("Ninguém respondeu 'Excelente'.");
  }
        }
        break;
      }
    }
    ++ expectador;
  }

  }
