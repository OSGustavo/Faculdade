

from jogo import JogoHanoi


def ler_torre(mensagem):
    try:
        return int(input(mensagem).strip())
    except ValueError:
        return 0


def jogar():
    jogo = JogoHanoi()
    print("=== Torre de Hanói ===")
    print("Mova os 4 discos da Torre 1 para a Torre 3.")

    while True:
        print(jogo.estado())
        print("\n1 - Fazer movimento | 2 - Reiniciar | 0 - Encerrar")
        opcao = input("Escolha uma opcao: ").strip()

        if opcao == "0":
            print(f"Partida encerrada. Movimentos realizados: {jogo.movimentos}.")
            return
        if opcao == "2":
            jogo.iniciar_nova_partida()
            print("Nova partida iniciada.")
            continue
        if opcao != "1":
            print("Opcao inválida.")
            continue

        origem = ler_torre("Torre de origem (1-3): ")
        destino = ler_torre("Torre de destino (1-3): ")
        sucesso, mensagem = jogo.mover(origem, destino)
        print(mensagem)

        if sucesso and jogo.venceu():
            print(jogo.estado())
            print(f"\nParabéns! Você venceu em {jogo.movimentos} movimentos.")
            resposta = input("Digite 1 para nova partida ou 0 para encerrar: ").strip()
            if resposta == "1":
                jogo.iniciar_nova_partida()
            else:
                print("Até a próxima!")
                return


if __name__ == "__main__":
    jogar()
