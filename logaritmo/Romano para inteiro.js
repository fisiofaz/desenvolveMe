/**
 * Facil
 * Os algarismos romanos são representados por sete símbolos diferentes:  I, V, X, L, C, De M.

       Valor do símbolo
        Eu 1
        V 5
        X 10
        E 50
        C 100
        D 500
        M1000
 * Por exemplo,  2é escrito II em algarismo romano, apenas duas unidades somadas. 12é escrito como  XII, que é simplesmente X + II. O número 27é escrito como XXVII, que é XX + V + II.
 * Os algarismos romanos são geralmente escritos do maior para o menor, da esquerda para a direita. No entanto, o numeral para quatro não é IIII. Em vez disso, o número quatro é escrito como IV. Como o um está antes do cinco, nós o subtraímos, resultando em quatro. O mesmo princípio se aplica ao número nove, que é escrito como IX. Há seis instâncias em que a subtração é usada:

    Ipode ser colocado antes de V(5) e X(10) para formar 4 e 9. 
    Xpode ser colocado antes de L(50) e C(100) para fazer 40 e 90. 
    Cpode ser colocado antes de D(500) e M(1000) para fazer 400 e 900.
    Dado um numeral romano, converta-o em um inteiro.
 */

function romanToInt (s) {
   // Mapa para armazenar os valores dos símbolos romanos
   const romanToInt = {
     'I': 1,
     'V': 5,
     'X': 10,
     'L': 50,
     'C': 100,
     'D': 500,
     'M': 1000
   };
   
   let total = 0; 
   
   for (let i = 0; i < s.length; i++) {
        // Se o próximo símbolo for maior que o atual, subtrai o valor atual do total
        if (i + 1 < s.length && romanToInt[s[i]] < romanToInt[s[i + 1]]) {
            total -= romanToInt[s[i]];
        } else {
           // Caso contrário, adicione o valor atual ao total
            totaç += romanToInt[s[i]];
        }
   }

   return total;
}