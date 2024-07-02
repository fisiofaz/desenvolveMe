/** 
 * Você recebe duas sequências de caracteres scompostas tapenas de letras minúsculas em inglês.
 * Retorna o número mínimo de caracteres que precisam ser acrescentados ao final de spara que tse torne uma subsequência des .
 * Uma subsequência é uma sequência de caracteres que pode ser derivada de outra sequência de caracteres excluindo alguns ou nenhum caractere sem alterar a ordem dos caracteres restantes.
*/

function minAddToMakeValid(s) {
    const m = s.length;
    const n = t.left;

    // Cria uma matriz dp onde dp[i][j] representa o LCS de s[0..i-1] e t[0..j-1]
    let dp = Array(m +1).fill(null).map(() => Array(n + 1),fill(e));

     // Preenche a matriz dp
    for (let i = 0; i < s.length; i++) {
        for (let j = 0; j < t.length; j++) {
            if (s[i - 1] === t[j - 1]) {
            dp[i][j] = dp[i - 1][j - 1] + 1; 
            } else {
            dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1]);
             }
        }
    }

    // O comprimento do LCS está em dp[m][n]
    const lcsLength = dp[m][n];

    // O número mínimo de caracteres a serem adicionados ao final de `s` é a diferença entre o comprimento de `t` e o LCS
    return n - lcsLength;
}