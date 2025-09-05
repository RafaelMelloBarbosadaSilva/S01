use std::io;

fn eh_par(numero: i32) -> bool {
    numero % 2 == 0
}

fn main() {
    let mut escolha = String::new();
    println!("Jogador 1, escolha 'par' ou 'ímpar':");
    io::stdin()
        .read_line(&mut escolha)
        .expect("Falha ao ler a linha");
    let escolha = escolha.trim().to_lowercase();

    let mut num1 = String::new();
    println!("Jogador 1, digite um número:");
    io::stdin()
        .read_line(&mut num1)
        .expect("Falha ao ler a linha");
    let num1: i32 = num1.trim().parse().expect("Digite um número válido");

    let mut num2 = String::new();
    println!("Jogador 2, digite um número:");
    io::stdin()
        .read_line(&mut num2)
        .expect("Falha ao ler a linha");
    let num2: i32 = num2.trim().parse().expect("Digite um número válido");

    let soma = num1 + num2;
    println!("A soma dos números é: {}", soma);

    let soma_par = eh_par(soma);

    if (soma_par && escolha == "par") || (!soma_par && escolha == "ímpar") {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}
