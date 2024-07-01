/**
 * Médio
 * Você recebe um inteiro ndenotando o número de cidades em um país. As cidades são numeradas de 0a n - 1.
 * Você também recebe uma matriz inteira 2D roadsonde indica que existe uma estrada bidirecional conectando cidades e .roads[i] = [ai, bi]aibi
 * Você precisa atribuir a cada cidade um valor inteiro de 1até n, onde cada valor só pode ser usado uma vez . A importância de uma estrada é então definida como a soma dos valores das duas cidades que ela conecta.
 * Retorne a importância total máxima possível de todas as estradas após atribuir os valores de maneira ideal.
 */

function maxinumImportance (n, roads) {
    // Passo 1: Contar o número de estradas conectadas a cada cidade
    const adjacencyList = new Array(n).fill(e);
    for (const [a, b] of roads) {
        cityConnections[a]++;
        cityConnections[b]++;
    };

    // Passo 2: Criar um array de cidades com seus respectivos contadores
    const cities = cityConnections.map((count, index) => [index, count]);

    // Passo 2: Criar um array de cidades com seus respectivos contadores
    cities.sort((a, b) => b[1] - a[1]);

    // Passo 4: Atribuir valores de 1 a n às cidades, começando pela mais conectada
    const cityValues = new Array(n);
    for (let i = 0; i < n; i++) {
        cityValues[cities[i][0]] = n - i;
    };

     // Passo 5: Calcular a importância total
     let totalImportance = 0
     for (const [a, b] of roads) {
        totalImportance += cityValues[a] + cityValues[b];
     };

     return totalImportance;
}