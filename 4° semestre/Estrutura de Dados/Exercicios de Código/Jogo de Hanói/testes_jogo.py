import unittest

from jogo import (
    JogoHanoi,
    desempilhar,
    empilhar,
    imprimir,
    inicializar_pilha,
    topo,
)


class TestPilhaDinamica(unittest.TestCase):
    def test_lifo_e_quantidade(self):
        pilha = inicializar_pilha()
        empilhar(pilha, 4)
        empilhar(pilha, 2)
        self.assertEqual(topo(pilha), 2)
        self.assertEqual(pilha.quantidade, 2)
        self.assertEqual(desempilhar(pilha), 2)
        self.assertEqual(desempilhar(pilha), 4)
        self.assertIsNone(desempilhar(pilha))
        self.assertEqual(pilha.quantidade, 0)

    def test_imprimir_sem_estrutura_de_armazenamento_auxiliar(self):
        pilha = inicializar_pilha()
        empilhar(pilha, 3)
        empilhar(pilha, 1)
        self.assertEqual(imprimir(pilha), "1 -> 3")


class TestJogoHanoi(unittest.TestCase):
    def test_estado_inicial(self):
        jogo = JogoHanoi()
        self.assertEqual(imprimir(jogo.torre1), "1 -> 2 -> 3 -> 4")
        self.assertEqual(jogo.torre2.quantidade, 0)
        self.assertEqual(jogo.movimentos, 0)

    def test_movimentos_invalidos_nao_alteram_o_jogo(self):
        jogo = JogoHanoi()
        sucesso, _ = jogo.mover(2, 3)
        self.assertFalse(sucesso)
        self.assertEqual(jogo.movimentos, 0)
        jogo.mover(1, 2)
        sucesso, _ = jogo.mover(1, 2)
        self.assertFalse(sucesso)
        self.assertEqual(jogo.movimentos, 1)

    def test_vitoria_com_solucao_minima(self):
        jogo = JogoHanoi()
        # Sequência de 15 movimentos para 4 discos: origem, destino.
        movimentos = ((1, 2), (1, 3), (2, 3), (1, 2), (3, 1),
                      (3, 2), (1, 2), (1, 3), (2, 3), (2, 1),
                      (3, 1), (2, 3), (1, 2), (1, 3), (2, 3))
        for origem, destino in movimentos:
            sucesso, mensagem = jogo.mover(origem, destino)
            self.assertTrue(sucesso, mensagem)
        self.assertTrue(jogo.venceu())
        self.assertEqual(jogo.movimentos, 15)
        self.assertEqual(imprimir(jogo.torre3), "1 -> 2 -> 3 -> 4")


if __name__ == "__main__":
    unittest.main()
