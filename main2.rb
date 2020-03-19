filmes = {
    starwars1: 3,
    matrix1: 4,
    reileao: 3.5
}


loop do
    puts "O que voce gostaria de fazer?"
    puts "-- Digite ’inc’ para incluir um filme."
    puts "-- Digite ’alt’ para alterar um filme."
    puts "-- Digite ’imp’ para imprimir os filmes da tela."
    puts "-- Digite ’del’ remover um filme."
    puts "-- Digite ’fim’ para sair."

    opcao = gets.chomp.downcase
    break if opcao == "fim"

    case opcao
    when ’inc’
        puts "Titulo? "
        titulo = gets.chomp
        if filmes[titulo.to_sym].nil?
            puts "Avaliacao? (de 0 a 5) "
            avaliacao = gets.chomp
            filmes[titulo.to_sym] = avaliacao.to_i
            puts "#{titulo} foi incluido com a avaliacao #{avaliacao}."
        else
            puts "Este filme ja existe! Sua avaliacao e #{filmes[titulo.to_sym]}."
        end
    when ’alt’
        puts "Titulo? "
        titulo = gets.chomp
        if filmes[titulo.to_sym].nil?
            puts "Filme nao encontrado!"
        else
            puts "Nova avaliacao? (de 0 a 5.)"
            avaliacao = gets.chomp
            filmes[titulo.to_sym] = avaliacao.to_i
            puts "#{titulo} foi atualizado com a avaliacao #{avaliacao}."
        end
    when ’imp’
        filmes.each do |filme, avaliacao|
            puts "#{filme}: #{avaliacao}"
        end
    when ’del’
        puts "Titulo?"
        titulo = gets.chomp
        if filmes[titulo.to_sym].nil?
            puts "Filme nao encontrado"
        else
            filmes.delete(titulo.to_sym)
            puts "#{titulo} foi removido."
        end
    else
        puts "Sinto muito, opcao invalida."
    end
end