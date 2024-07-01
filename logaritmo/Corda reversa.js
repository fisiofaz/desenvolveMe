/**
 * Escreva uma função que inverta uma string. A string de entrada é fornecida como uma matriz de caracteres s.
 * Você deve fazer isso modificando a matriz de entrada local com O(1)memória extra.
 */

function reverseString (s) {
    // Define dois ponteiros, um no início e outro no final da matriz
    let left = 0;
    let right = s.length - 1;

    // Enquanto os ponteiros não se encontrarem
    while (left < right) {
        // Troca os caracteres nas posições dos ponteiros
        let temp = s[left];
        s[left] = s[right];
        s[right] = temp;

        // Move os ponteiros em direção ao meio
        left++;
        right--;
    }
}