
class No: 
    def __init__(self, disco, proximo=None):
        self.disco = disco
        self.proximo = proximo


class Pilha:
    def __init__(self):
        self.topo = None
        self.quantidade = 0


def inicializar_pilha():
   
    return Pilha()


def empilhar(pilha, disco):
    
    novo_no = No(disco, pilha.topo)
    pilha.topo = novo_no
    pilha.quantidade += 1


def desempilhar(pilha):
    
    if pilha.topo is None:
        return None

    no_removido = pilha.topo
    pilha.topo = no_removido.proximo
    no_removido.proximo = None
    pilha.quantidade -= 1
    return no_removido.disco


def topo(pilha):

    if pilha.topo is None:
        return None
    return pilha.topo.disco


def imprimir(pilha):

    if pilha.topo is None:
        return "vazia"

    texto = ""
    atual = pilha.topo
    while atual is not None:
        if texto:
            texto += " -> "
        texto += str(atual.disco)
        atual = atual.proximo
    return texto


class JogoHanoi:

    DISCOS = 4

    def __init__(self):
        self.iniciar_nova_partida()

    def iniciar_nova_partida(self):
        self.torre1 = inicializar_pilha()
        self.torre2 = inicializar_pilha()
        self.torre3 = inicializar_pilha()
        # Inserção do maior para o menor deixa o menor disco no topo.
        for disco in range(self.DISCOS, 0, -1):
            empilhar(self.torre1, disco)
        self.movimentos = 0

    def _obter_torre(self, numero):
        if numero == 1:
            return self.torre1
        if numero == 2:
            return self.torre2
        if numero == 3:
            return self.torre3
        return None

    def mover(self, origem_numero, destino_numero):
        
        origem = self._obter_torre(origem_numero)
        destino = self._obter_torre(destino_numero)

        if origem is None or destino is None:
            return False, "As torres devem ser informadas com os números 1, 2 ou 3."
        if origem is destino:
            return False, "A torre de origem e a torre de destino devem ser diferentes."
        if origem.topo is None:
            return False, "Movimento inválido: a torre de origem está vazia."
        if destino.topo is not None and topo(origem) > topo(destino):
            return False, "Movimento inválido: não é permitido pôr um disco maior sobre um menor."

        disco = desempilhar(origem)
        empilhar(destino, disco)
        self.movimentos += 1
        return True, "Movimento realizado com sucesso."

    def venceu(self):
        return self.torre3.quantidade == self.DISCOS

    def estado(self):
        return (
            "\nEstado atual (topo -> base)\n"
            f"Torre 1: {imprimir(self.torre1)}\n"
            f"Torre 2: {imprimir(self.torre2)}\n"
            f"Torre 3: {imprimir(self.torre3)}\n"
            f"Movimentos: {self.movimentos}"
        )
