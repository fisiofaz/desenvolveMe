/**
Dado um array inteiro arr, retorna true se houver três números ímpares consecutivos no array. Caso contrário, retorna  false.
*/
function threeConsecutiveOdds (arr) {
    // Verifica se o array tem menos de 3 elementos, o que torna impossível ter 3 ímpares consecutivos
    if (arr.length < 3) {
        return false;
    }

    // Itera sobre o array, começando no primeiro elemento e indo até o antepenúltimo
    for (let i = 0; i < arr.length - 2; i++) {
        //verificar se o três elementos consecrtuvis são impares
        if (arr[i] % 2!== 0 && arr[i + 1] % 2!== 0 && arr[i + 2] % 2!== 0) {
            return true;
        }
    }
    
    // Se não achou três números ímpares consecutivos, retorna false
    return false;
}