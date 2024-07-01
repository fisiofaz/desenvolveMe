/**
 * Você recebe uma string s. A pontuação de uma string é definida como a soma da diferença absoluta entre os valores ASCII de caracteres adjacentes.
 * Retorne a pontuação de . s
*/

function calculateStringScore(s) {
    let score = 0;

    for (let i = 0; i < s.length - 1; i++) {
        score += Math.abs(s.charCodeAt(i) - s.charCodeAt(i + 1));
    }

    return score;
}