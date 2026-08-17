def inicializar_array(tamanho):
    if tamanho <= 0:
        return None

    array = [0.0] * tamanho
    return array


tamanho = int(input("Digite o tamanho do vetor: "))
vetor = inicializar_array(tamanho)

if vetor is None:
    print("O tamanho deve ser maior que zero.")
else:
    print("Vetor iniciado:", vetor)