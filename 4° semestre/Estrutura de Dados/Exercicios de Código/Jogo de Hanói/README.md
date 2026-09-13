# Torre de Hanói — pilhas dinâmicas em Python

Jogo de terminal da Torre de Hanói com quatro discos. Cada torre é uma pilha dinâmica implementada com nós encadeados e referências; os discos **não** são guardados em `list`, `deque`, `Stack` nem outra coleção pronta.

## Requisitos e execução

É necessário Python 3. Execute no diretório do projeto:

```powershell
python main.py
```

No menu, escolha `1` para mover um disco e informe as torres de origem e destino. Escolha `2` para reiniciar a partida ou `0` para encerrá-la.

## Exemplo de execução

```text
=== Torre de Hanói ===
Mova os 4 discos da Torre 1 para a Torre 3.

Estado atual (topo -> base)
Torre 1: 1 -> 2 -> 3 -> 4
Torre 2: vazia
Torre 3: vazia
Movimentos: 0

1 - Fazer movimento | 2 - Reiniciar | 0 - Encerrar
Escolha uma opção: 1
Torre de origem (1-3): 1
Torre de destino (1-3): 2
Movimento realizado com sucesso.
```

Ao tentar mover de uma torre vazia ou colocar um disco maior sobre um menor, o jogo mostra uma mensagem e não altera os discos nem o contador de movimentos. A vitória ocorre quando os quatro discos chegam à Torre 3.

## Estrutura de dados

`No` possui os campos `disco` e `proximo`. `Pilha` possui os campos `topo` (referência para o primeiro nó) e `quantidade`.

| Operação | Descrição |
| --- | --- |
| `inicializar_pilha()` | Cria uma pilha vazia. |
| `empilhar(pilha, disco)` | Cria um nó, faz seu `proximo` apontar para o topo anterior e atualiza o topo. |
| `desempilhar(pilha)` | Remove o nó do topo, atualiza a referência do topo e retorna o disco. |
| `topo(pilha)` | Consulta o disco no topo sem removê-lo. |
| `imprimir(pilha)` | Percorre os nós por `proximo` e apresenta os discos do topo à base. |

As operações de inserção, remoção e consulta do topo são O(1). A impressão é O(n), pois precisa visitar cada nó.

## Testes realizados e resultados

Execute:

```powershell
python -m unittest -v
```

Cobertura dos testes:

- comportamento LIFO, atualização da quantidade e desempilhamento de pilha vazia;
- impressão da cadeia de nós;
- configuração inicial dos quatro discos;
- bloqueio de movimentos inválidos, sem incrementar o contador;
- solução completa com os 15 movimentos mínimos e detecção de vitória.

Resultado esperado: todos os cinco testes devem finalizar como `ok`.
