import Foundation

func main() {
    print("Calculadora de Função Exponencial")

    while true {
        print("Digite a base (ou 'sair' para encerrar):")
        guard let baseInput = readLine(), baseInput.lowercased() != "sair" else {
            print("Encerrando o programa.")
            break
        }

        guard let base = Double(baseInput) else {
            print("Entrada inválida. Por favor, insira um número válido para a base.")
            continue
        }

        print("Digite o expoente:")
        guard let exponentInput = readLine(), let exponent = Double(exponentInput) else {
            print("Entrada inválida. Por favor, insira um número válido para o expoente.")
            continue
        }

        let result = pow(base, exponent)
        print("Resultado de \(base) elevado a \(exponent) é \(result)")
    }
}

main()
