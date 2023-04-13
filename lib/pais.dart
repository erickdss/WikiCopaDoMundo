import 'package:helloworld/main.dart';

class Pais {
  String nome;
  String urlImage;
  String descricao;
  List<Diciplinas> diciplinas;
  Pais(this.nome, this.urlImage, this.descricao, this.diciplinas);

  static List<Pais> exemplos = [
    Pais(
        "Brasil",
        "https://upload.wikimedia.org/wikipedia/pt/thumb/2/2b/Confedera%C3%A7%C3%A3o_Brasileira_de_Futebol_2019.svg/1200px-Confedera%C3%A7%C3%A3o_Brasileira_de_Futebol_2019.svg.png",
        "Brasil: a seleção brasileira de futebol é a equipe mais bem-sucedida na história da Copa do Mundo, tendo vencido o torneio em cinco ocasiões - 1958, 1962, 1970, 1994 e 2002.",
        [Diciplinas("Brasil", "Primeiro", 5.0)]),
    Pais(
        "Alemanha",
        "https://sismf.museudofutebol.org.br/anexos/imagem/534012/w:640/h:640/c:0",
        "Alemanha: a seleção alemã de futebol é uma das equipes mais bem-sucedidas da Copa do Mundo, tendo vencido o torneio quatro vezes - 1954, 1974, 1990 e 2014.",
        [Diciplinas("Alemanha", "Segundo", 4.0)]),
    Pais(
        "Italia",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Logo_Italy_National_Football_Team_-_2023.svg/1200px-Logo_Italy_National_Football_Team_-_2023.svg.png",
        "Itália: a seleção italiana de futebol venceu a Copa do Mundo quatro vezes - 1934, 1938, 1982 e 2006.",
        [Diciplinas("Italia", "Terceiro", 4.0)]),
    Pais(
        "Argentina",
        "https://upload.wikimedia.org/wikipedia/pt/d/d6/Escudo_da_Sele%C3%A7%C3%A3o_Argentina_%282022%29.png",
        "Argentina: a seleção argentina de futebol venceu a Copa do Mundo três vezes - em 1978, 1986 e 2022.",
        [Diciplinas("Argentina", "Quarto", 3.0)]),
    Pais(
        "Uruguai",
        "https://i.pinimg.com/originals/da/ed/64/daed642e35dd2dadcddcd1a26fe7b210.png",
        "Uruguai: a seleção uruguaia de futebol é uma das equipes mais bem-sucedidas da história da Copa do Mundo, tendo vencido o torneio duas vezes - em 1930 e 1950.",
        [Diciplinas("Uruguai", "Quinto", 2.0)]),
  ];
}

class Diciplinas {
  String pais;
  String ranking;
  double titulo;

  Diciplinas(this.pais, this.ranking, this.titulo);
}
