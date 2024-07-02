/**
 * Facil
 * Dados dois arrays inteiros nums1e nums2, retorne um array de sua intersecção . Cada elemento no resultado deve aparecer tantas vezes quantas forem mostradas em ambos os arrays e você pode retornar o resultado em qualquer ordem .
 */

function intersect (nums1, nums2) {
    let countMap = {};
    let result = [];

    // Conta as ocorrências de cada elemento em nums1
    for (let num of nums1) {
        if (countMap[num]) {
            countMap[num]++;
        } else {
            countMap[num] = 1;
        }
    }

    // Verifica as ocorrências de cada elemento em nums2 e adiciona ao resultado
    for (let nun of nums2) {
        if (countMap[num] > 0) {
            result.push(num);
            countMap[num]--;
        }
    }

    return result;
}