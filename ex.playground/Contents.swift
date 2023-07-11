import UIKit

//Faça um programa que mostre os números pares entre 1 e 100, inclusive.
//
//Entrada
//Neste problema extremamente simples de repetição não há entrada.
//
//Saída
//Imprima todos os números pares entre 1 e 100, inclusive se for o caso, um em cada linha.

for i in 1...100 {
    if i % 2 == 0 {
        print(i)
    }
}


//Armazene dois valores nas variáveis A e B. Efetue a soma de A e B atribuindo o seu resultado na variável X. Imprima X conforme exemplo apresentado abaixo. Não apresente mensagem alguma além daquilo que está sendo especificado e não esqueça de imprimir o fim de linha após o resultado, caso contrário, você receberá "Presentation Error".

//Entrada
//A entrada contém 2 valores inteiros.

//Saída
//Imprima a mensagem "X = " (letra X maiúscula) seguido pelo valor da variável X e pelo final de linha. Cuide para que tenha um espaço antes e depois do sinal de igualdade, conforme o exemplo abaixo.

var A = 1
var B = 35
var resultado = A + B

print("X = \(resultado)")

//Leia um valor de ponto flutuante com duas casas decimais. Este valor representa um valor monetário. A seguir, calcule o menor número de notas e moedas possíveis no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2. As moedas possíveis são de 1, 0.50, 0.25, 0.10, 0.05 e 0.01. A seguir mostre a relação de notas necessárias.

//Entrada
//O arquivo de entrada contém um valor de ponto flutuante N (0 ≤ N ≤ 1000000.00).

//Saída
//Imprima a quantidade mínima de notas e moedas necessárias para trocar o valor inicial, conforme exemplo fornecido.

//Obs: Utilize ponto (.) para separar a parte decimal.

//Exemplo de Entrada
//576.73

//Exemplo de Saída
//NOTAS:
//5 nota(s) de R$ 100.00
//1 nota(s) de R$ 50.00
//1 nota(s) de R$ 20.00
//0 nota(s) de R$ 10.00
//1 nota(s) de R$ 5.00
//0 nota(s) de R$ 2.00
//MOEDAS:
//1 moeda(s) de R$ 1.00
//1 moeda(s) de R$ 0.50
//0 moeda(s) de R$ 0.25
//2 moeda(s) de R$ 0.10
//0 moeda(s) de R$ 0.05
//3 moeda(s) de R$ 0.01

var valor = 576.73

var notas = [100, 50, 20, 10, 5, 2]

var moedas = [1.0, 0.50, 0.25, 0.10, 0.05, 0.01]

print("NOTAS:")
for nota in notas {
    var qtdNotas = Int(valor / Double(nota))
    print("\(qtdNotas) nota (s) de R$ \(nota).00")
    valor -= Double(qtdNotas) * Double(nota)
}

print("MOEDAS:")

for moeda in moedas {
    var qtdMoedas = Int(valor / Double(moeda))
    print("\(qtdMoedas) moeda (s) de R$ \(moeda)")
}

//Leia um valor inteiro correspondente à idade de uma pessoa em dias e informe-a em anos, meses e dias

//Obs.: apenas para facilitar o cálculo, considere todo ano com 365 dias e todo mês com 30 dias. Nos casos de teste nunca haverá uma situação que permite 12 meses e alguns dias, como 360, 363 ou 364. Este é apenas um exercício com objetivo de testar raciocínio matemático simples.

//Entrada
//O arquivo de entrada contém um valor inteiro.

//Saída
//Imprima a saída conforme exemplo fornecido.

//Exemplo de Entrada
//400
//Exemplo de Saída
//1 ano(s)
//1 mes(es)
//5 dia(s)

var idade = 400

var anos = Int(idade / 365)
var saldo = idade - anos * 365
var meses = Int(saldo / 30)
var dias = saldo - meses * 30

print("\(anos) ano(s)")
print("\(meses) mes(es)")
print("\(dias) dia(s)")
