import math


def inicializar_array(tamanho):
    if tamanho <= 0:
        return None

    return [0.0] * tamanho


def inserir(array, indice, valor):
    if indice < 0 or indice >= len(array):
        return False

    array[indice] = float(valor)
    return True


def imprimir(array):
    print("[", end="")

    for i in range(len(array)):
        print(f"{array[i]:.2f}", end="")

        if i < len(array) - 1:
            print(", ", end="")

    print("]")


def buscar(array, valor):
    for i in range(len(array)):
        if array[i] == float(valor):
            return i

    return -1


def remover(array, indice):
    if indice < 0 or indice >= len(array):
        return False

    array[indice] = 0.0
    return True


def multiplicar_por_escalar(array, escalar):
    resultado = inicializar_array(len(array))

    for i in range(len(array)):
        resultado[i] = array[i] * escalar

    return resultado


def somar_vetores(array1, array2):
    if len(array1) != len(array2):
        return None

    resultado = inicializar_array(len(array1))

    for i in range(len(array1)):
        resultado[i] = array1[i] + array2[i]

    return resultado


def produto_escalar(array1, array2):
    if len(array1) != len(array2):
        return None

    soma = 0.0

    for i in range(len(array1)):
        soma = soma + array1[i] * array2[i]

    return soma


def norma(array):
    soma_quadrados = 0.0

    for i in range(len(array)):
        soma_quadrados = soma_quadrados + array[i] ** 2

    return math.sqrt(soma_quadrados)


def similaridade_cosseno(array1, array2):
    if len(array1) != len(array2):
        return None

    norma1 = norma(array1)
    norma2 = norma(array2)

    if norma1 == 0 or norma2 == 0:
        return None

    produto = produto_escalar(array1, array2)

    return produto / (norma1 * norma2)


def encontrar_mais_similar(indice_consulta, vetores):
    maior_similaridade = -2.0
    indice_mais_similar = -1

    for i in range(len(vetores)):
        if i != indice_consulta:
            similaridade = similaridade_cosseno(
                vetores[indice_consulta], vetores[i]
            )

            if similaridade is not None and similaridade > maior_similaridade:
                maior_similaridade = similaridade
                indice_mais_similar = i

    return indice_mais_similar, maior_similaridade


def criar_vetor(tamanho):
    vetor = inicializar_array(tamanho)

    for i in range(tamanho):
        valor = float(input(f"Informe o valor da posição {i}: "))
        inserir(vetor, i, valor)

    return vetor


# Código principal
tamanho = int(input("Informe o tamanho dos vetores: "))

if tamanho <= 0:
    print("O tamanho deve ser maior que zero.")

else:
    vetores = []
    opcao = -1

    while opcao != 0:
        print("\n--- MENU ---")
        print("1 - Criar vetor")
        print("2 - Exibir vetores")
        print("3 - Multiplicar vetor por escalar")
        print("4 - Somar dois vetores")
        print("5 - Calcular produto escalar")
        print("6 - Calcular norma de um vetor")
        print("7 - Calcular similaridade de cosseno")
        print("8 - Encontrar vetor mais similar")
        print("9 - Buscar valor em um vetor")
        print("10 - Remover valor de um vetor")
        print("0 - Sair")

        opcao = int(input("Escolha uma opção: "))

        if opcao == 1:
            print(f"\nCriando o vetor {len(vetores)}:")
            novo_vetor = criar_vetor(tamanho)
            vetores.append(novo_vetor)
            print("Vetor criado com sucesso.")

        elif opcao == 2:
            if len(vetores) == 0:
                print("Nenhum vetor foi criado.")
            else:
                for i in range(len(vetores)):
                    print(f"Vetor {i}:", end=" ")
                    imprimir(vetores[i])

        elif opcao == 3:
            if len(vetores) == 0:
                print("Crie pelo menos um vetor primeiro.")
            else:
                indice = int(input("Informe o índice do vetor: "))

                if indice < 0 or indice >= len(vetores):
                    print("Índice de vetor inválido.")
                else:
                    escalar = float(input("Informe o escalar: "))
                    resultado = multiplicar_por_escalar(vetores[indice], escalar)

                    print("Resultado:")
                    imprimir(resultado)

        elif opcao == 4:
            if len(vetores) < 2:
                print("Crie pelo menos dois vetores primeiro.")
            else:
                indice1 = int(input("Índice do primeiro vetor: "))
                indice2 = int(input("Índice do segundo vetor: "))

                if (indice1 < 0 or indice1 >= len(vetores) or
                        indice2 < 0 or indice2 >= len(vetores)):
                    print("Índice de vetor inválido.")
                else:
                    resultado = somar_vetores(vetores[indice1], vetores[indice2])
                    print("Resultado da soma:")
                    imprimir(resultado)

        elif opcao == 5:
            if len(vetores) < 2:
                print("Crie pelo menos dois vetores primeiro.")
            else:
                indice1 = int(input("Índice do primeiro vetor: "))
                indice2 = int(input("Índice do segundo vetor: "))

                if (indice1 < 0 or indice1 >= len(vetores) or
                        indice2 < 0 or indice2 >= len(vetores)):
                    print("Índice de vetor inválido.")
                else:
                    resultado = produto_escalar(
                        vetores[indice1], vetores[indice2]
                    )
                    print(f"Produto escalar: {resultado:.2f}")

        elif opcao == 6:
            if len(vetores) == 0:
                print("Crie pelo menos um vetor primeiro.")
            else:
                indice = int(input("Informe o índice do vetor: "))

                if indice < 0 or indice >= len(vetores):
                    print("Índice de vetor inválido.")
                else:
                    resultado = norma(vetores[indice])
                    print(f"Norma: {resultado:.4f}")

        elif opcao == 7:
            if len(vetores) < 2:
                print("Crie pelo menos dois vetores primeiro.")
            else:
                indice1 = int(input("Índice do primeiro vetor: "))
                indice2 = int(input("Índice do segundo vetor: "))

                if (indice1 < 0 or indice1 >= len(vetores) or
                        indice2 < 0 or indice2 >= len(vetores)):
                    print("Índice de vetor inválido.")
                else:
                    resultado = similaridade_cosseno(
                        vetores[indice1], vetores[indice2]
                    )

                    if resultado is None:
                        print("Operação inválida: vetor nulo ou tamanhos diferentes.")
                    else:
                        print(f"Similaridade de cosseno: {resultado:.4f}")

        elif opcao == 8:
            if len(vetores) < 2:
                print("Crie pelo menos dois vetores primeiro.")
            else:
                indice_consulta = int(input("Índice do vetor de consulta: "))

                if indice_consulta < 0 or indice_consulta >= len(vetores):
                    print("Índice de vetor inválido.")
                else:
                    indice, similaridade = encontrar_mais_similar(
                        indice_consulta, vetores
                    )

                    if indice == -1:
                        print("Nenhum vetor válido para comparação.")
                    else:
                        print(f"Vetor mais similar: vetor {indice}")
                        print(f"Similaridade: {similaridade:.4f}")

        elif opcao == 9:
            if len(vetores) == 0:
                print("Crie pelo menos um vetor primeiro.")
            else:
                indice_vetor = int(input("Informe qual vetor deseja pesquisar: "))

                if indice_vetor < 0 or indice_vetor >= len(vetores):
                    print("Índice de vetor inválido.")
                else:
                    valor = float(input("Informe o valor que deseja buscar: "))
                    indice_valor = buscar(vetores[indice_vetor], valor)

                    if indice_valor == -1:
                        print("Valor não encontrado.")
                    else:
                        print(f"Valor encontrado no índice {indice_valor}.")

        elif opcao == 10:
            if len(vetores) == 0:
                print("Crie pelo menos um vetor primeiro.")
            else:
                indice_vetor = int(input("Informe o índice do vetor: "))

                if indice_vetor < 0 or indice_vetor >= len(vetores):
                    print("Índice de vetor inválido.")
                else:
                    indice_valor = int(input("Índice da posição a remover: "))

                    if remover(vetores[indice_vetor], indice_valor):
                        print("Valor removido. Vetor atualizado:")
                        imprimir(vetores[indice_vetor])
                    else:
                        print("Índice de posição inválido.")

        elif opcao == 0:
            print("Programa encerrado.")

        else:
            print("Opção inválida.")