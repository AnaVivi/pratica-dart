import 'dart:io';
void main(){
   var expectador = 0;
   var totalIdadeExcelente = 0;
   var quantidadeExcelente = 0;
   var quantidadeRegular = 0; 
   while(expectador <= 20){
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
    }

    //Parei aqui: em refatorar o código. O adaptando p/ estrutura switch case.

    //----------------------------------------------------------------
    if (input == '3') { // Verifica se a opinião é "Excelente"
        totalIdadeExcelente += idade; // Adiciona a idade à soma das idades Excelentes
        quantidadeExcelente++; // Incrementa a quantidade de respostas Excelentes
      } else if (input == '1') { // Adiciona esta parte para verificar se a opinião é "Regular"
        quantidadeRegular++; // Incrementa a quantidade de respostas "Regular"
      }

    expectador++;
    
  }
}

 if (quantidadeExcelente > 0) {
    double mediaIdadeExcelente = totalIdadeExcelente / quantidadeExcelente;
    print("Média das idades das pessoas que responderam 'Excelente': $mediaIdadeExcelente anos.");
  } else {
    print("Ninguém respondeu 'Excelente'.");
  }

}



/*print("Resultado da pesquisa");
    if (input == "3") {
      int media = (idadeEntrada == "3") ? "1" : "2"; media
   }*/