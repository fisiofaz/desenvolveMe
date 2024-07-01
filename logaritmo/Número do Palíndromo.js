/**
 * Facil
 * Dado um número inteiro x, retorne truese xfor um
palíndromo, e falsecaso contrário .
 */

function isPalindrome(x) {
    // Converte x para uma string
    let str = x.toString();

    // Compara a string com seu inverso
    return str === str.split('').reverse().join('');
}