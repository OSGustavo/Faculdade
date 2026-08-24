def inicializar_array(tamanho):
    if tamanho <= 0:
        return None

    array = [0.0] * tamanho
    return array

tamanho = int(input("Informe o tamanho do vetor: "))
vetor = inicializar_array(tamanho)


#
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

#Funcao que busca o valor com base no indice e retorna para depois printar
def buscar(array, valor):
    for i in range(len(array)):
        if array[i] == float(valor):
            return i

    return -1



if vetor is None:
    print("O tamanho deve ser maior que zero.")
else:
    for i in range(tamanho):
        valor = float(input(f"Informe o valor da posição {i}: "))
        inserir(vetor, i, valor)

    print("Vetor preenchido:")
    imprimir(vetor)


#recebe o indice da funcao busca e caso exista printa o valor 
valor_busca = float(input("Qual valor deseja buscar? "))
indice = buscar(vetor, valor_busca)
if indice == -1:
    print("Valor não encontrado.")
else:
    print(f"Valor encontrado no índice {indice}.")