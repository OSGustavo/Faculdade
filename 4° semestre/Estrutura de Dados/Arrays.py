def inicializar_array(tamanho):
    if tamanho <= 0:
        return None

    array = [0.0] * tamanho
    return array

def inserir(array, indice, valor):
    if indice < 0 or indice >= len(array):
        return False

    array[indice] = float(valor)
    return True


tamanho = int(input("Informe o tamanho do vetor: "))
vetor = inicializar_array(tamanho)

if vetor is None:
    print("O tamanho deve ser maior que zero.")
else:
    for i in range(tamanho):
        valor = float(input(f"Informe o valor da posição {i}: "))
        inserir(vetor, i, valor)

    print("Vetor preenchido:", vetor)