# Sistema de Vetores em Python

Programa em Python para criar e armazenar vetores de números reais, realizar operações matemáticas e calcular a similaridade de cosseno entre vetores.

## 1. Instruções para execução

### Requisitos

- Python 3 instalado.
- Nenhuma biblioteca externa é necessária. O programa utiliza apenas o módulo padrão `math`.

### Como executar

1. Salve o código do programa em um arquivo chamado `Arrays.py`, na mesma pasta deste README.
2. Abra o terminal nessa pasta ou abra em alguma IDE
3. Execute o comando:

```bash
python Arrays.py
```

Em alguns computadores com Windows, o comando pode ser:

```bash
py Arrays.py
```

Como a linguagem é Python, não há etapa de compilação: basta executar o arquivo.

## 2. Exemplos de execução

### Criar e exibir vetores

```text
Informe o tamanho dos vetores: 3

--- MENU ---
1 - Criar vetor
2 - Exibir vetores
...
Escolha uma opção: 1

Criando o vetor 0:
Informe o valor da posição 0: 1
Informe o valor da posição 1: 2
Informe o valor da posição 2: 3
Vetor criado com sucesso.

Escolha uma opção: 2
Vetor 0: [1.00, 2.00, 3.00]
```

### Produto escalar

Após criar os vetores `[0, 1, 2]` e `[2, 3, 4]`:

```text
Escolha uma opção: 5
Índice do primeiro vetor: 0
Índice do segundo vetor: 1
Produto escalar: 11.00
```

O cálculo realizado é:

```text
(0 × 2) + (1 × 3) + (2 × 4) = 11
```

### Similaridade de cosseno

Com os vetores `[1, 2, 3]` e `[4, 5, 6]`:

```text
Escolha uma opção: 7
Índice do primeiro vetor: 0
Índice do segundo vetor: 1
Similaridade de cosseno: 0.9746
```

### Busca de valor

Com o vetor armazenado `vetores[0] = [2, 1, 2]`:

```text
Escolha uma opção: 9
Informe qual vetor deseja pesquisar (ex.: 0): 0
Informe o número que deseja encontrar: 2
Valor encontrado no índice 0.
```

O valor `2` também está na posição `2`, mas a função retorna a primeira ocorrência encontrada.

### Vetor nulo

Ao tentar calcular a similaridade de cosseno com o vetor `[0, 0, 0]`, o resultado esperado é:

```text
Operação inválida: vetor nulo ou tamanhos diferentes.
```

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