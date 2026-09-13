# Testes do sistema de vetores

## 1. Inicializar array
- Entrada: tamanho = 3
- Resultado esperado: [0.0, 0.0, 0.0]
- Resultado obtido: conforme esperado

## 2. Inserir
- Vetor inicial: [0.0, 0.0, 0.0]
- Inserir 2; 1 ; 2 no índice 0, 1, 2 respectivamente
- Resultado esperado: [2.0, 1.0, 2.0]
- Resultado obtido: conforme esperado

## 3. Buscar
- Vetor[0]: [2.0, 1.0, 2.0]
- Buscar no vetor0
- Buscar o valor: 2
- Resultado esperado: índice 0
- Resultado obtido: conforme esperado

## 4. Remover
- Vetor: [2.0, 1.0, 2.0]
- Remover do vetor[0] índice: 0
- Resultado esperado: [0.0, 1.0, 2.0]
- Resultado obtido: conforme esperado

## 5. Multiplicação por escalar
- Vetor: [0.0, 1.0, 2.0]
- Escalar: 2.0
- Resultado esperado: [0.0, 2.0, 4.0]
- Resultado obtido: conforme esperado

## 6. Soma de vetores
- Vetor A: [0.0, 1.0, 2.0]
- Vetor B: [2.0, 3.0, 4.0]
- Resultado esperado: [2.0, 4.0, 6.0]
- Resultado obtido: conforme esperado

## 7. Produto escalar
- Vetor A: [0.0, 1.0, 2.0]
- Vetor B: [2.0, 3.0, 4.0]
- Resultado esperado: 11.0
- Resultado obtido: conforme esperado

## 8. Norma
- Vetor: [0.0, 1.0, 2.0]
- Resultado esperado: 2.2361
- Resultado obtido: conforme esperado

## 9. Similaridade de cosseno
- Vetor A: [0.0, 1.0, 2.0]
- Vetor B: [2.0, 3.0, 4.0]
- Resultado esperado: aproximadamente 0.9135
- Resultado obtido: conforme esperado

## 10. Similaridade com vetor nulo
- Vetor A: [2.0, 3.0, 4.0]
- Vetor B: [0.0, 0.0, 0.0]
- Resultado esperado: mensagem de operação inválida
- Resultado obtido: conforme esperado

## 11. Vetor mais similar
- Vetor de consulta: [0.0, 1.0, 2.0]
- Vetores armazenados: [2.0, 3.0, 4.0] e [0.0, 0.0, 0.0]
- Resultado esperado: vetor [2.0, 3.0, 4.0]
- Resultado obtido: conforme esperado