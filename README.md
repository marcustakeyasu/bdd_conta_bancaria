# Projeto Conta Bancária

## O que o projeto faz?

O projeto Conta é um conjunto de classes implementadas em Java para simular operações bancárias, com foco em cenários de teste de saque em contas especiais. Utiliza a linguagem de desenvolvimento Behavior-Driven Development (BDD) com o auxílio do framework Cucumber.

## Por que o projeto é útil?

Este projeto é útil para desenvolvedores e testadores que desejam realizar testes automatizados de operações bancárias, como saques em contas especiais. Ele fornece uma estrutura básica para a implementação de testes comportamentais, facilitando a validação do comportamento esperado do sistema em cenários específicos.

## Como os usuários podem começar a usar o projeto?

1. Clone este repositório: `git clone https://exemplo.com/repositorio/Conta.git`
2. Abra o projeto em seu ambiente de desenvolvimento Java preferido.
3. Execute os testes Cucumber para verificar o comportamento do sistema.

Certifique-se de ter as dependências necessárias instaladas e configuradas corretamente.

## Onde os usuários podem obter ajuda com seu projeto?

Se você encontrar problemas ou tiver dúvidas sobre o projeto, sinta-se à vontade para abrir uma "Issue" neste repositório. Fico feliz em ajudar a esclarecer dúvidas ou resolver problemas encontrados.

## Quem mantém e contribui com o projeto?

Mantido por Marcus Takeyasu

---

# Documentação dos Resultados dos Cenários

## Cenário 1: Cliente especial com saldo negativo

### Descrição do Cenário
O cenário representa um cliente especial com saldo negativo que tenta realizar um saque.

### Passos do Cenário
1. **Given Um cliente especial com saldo atual de -200 reais**
   - **Descrição:** O cenário começa com a condição de um cliente especial com saldo negativo.
   - **Resultado do Console:** O cenário falhou devido a uma exceção `ExceptionInInitializerError` ao tentar configurar os conversores XStream.

2. **When for solicitado um saque no valor de 100 reais**
   - **Descrição:** Quando um saque de 100 reais é solicitado pelo cliente especial.
   - **Resultado do Console:** Este passo foi pulado devido à falha no passo anterior.

3. **Then deve efetuar o saque e atualizar o saldo da conta para -300 reais**
   - **Descrição:** O saque deve ser efetuado com sucesso, e o saldo da conta é atualizado para -300 reais.
   - **Resultado do Console:** Este passo foi pulado devido à falha no passo anterior.

4. **And check more outcomes**
   - **Descrição:** Além disso, são verificados outros resultados não especificados no cenário.
   - **Resultado do Console:** Este passo foi pulado devido à falha no passo anterior.

### Resultado Geral do Cenário
- **Status:** Falhou
- **Exceção:** `ExceptionInInitializerError`
- **Causa:** Inacessibilidade para tornar o campo `comparator` de `TreeMap` acessível.

## Cenário 2: Cliente comum com saldo negativo

### Descrição do Cenário
O cenário representa um cliente comum com saldo negativo que tenta realizar um saque de 200 reais.

### Passos do Cenário
1. **Given Um cliente comum com saldo atual de -200 reais**
   - **Descrição:** O cenário começa com a condição de um cliente comum com saldo negativo.

2. **When solicitar um saque de 200 reais**
   - **Descrição:** Quando um saque de 200 reais é solicitado pelo cliente comum.
   - **Resultado do Console:** Este passo foi pulado devido à falha no passo anterior.

3. **Then não deve efetuar o saque e deve retornar a mensagem Saldo Insuficiente**
   - **Descrição:** O saque não deve ser efetuado, e uma mensagem de "Saldo Insuficiente" deve ser retornada.
   - **Resultado do Console:** Este passo foi pulado devido à falha no passo anterior.

### Resultado Geral do Cenário
- **Status:** Não executado (devido à falha no cenário 1)

## Conclusões
Ambos os cenários não foram executados com sucesso devido a uma exceção durante a inicialização. É necessário abordar a exceção `ExceptionInInitializerError` antes de tentar executar esses cenários novamente.

# Leia-me (README)

## Descrição
Este repositório contém cenários de teste para a funcionalidade "Cliente faz saque de dinheiro" em um caixa eletrônico. O objetivo é validar o comportamento do sistema em diferentes situações.





