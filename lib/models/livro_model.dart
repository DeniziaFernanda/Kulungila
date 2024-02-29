import 'package:kulungila/models/classificacao_model.dart';
import 'package:kulungila/models/user_model.dart';

class LivroModel {
  int idLivro;
  String titulo;
  UserModel autor;
  String sinopse;
  String imagem;
  ClassificacaoModel classificacao;
  DateTime data_criacao;
  DateTime data_publicacao;

  LivroModel({
    required this.idLivro,
    required this.titulo,
    required this.autor,
    required this.sinopse,
    required this.imagem,
    required this.classificacao,
    required this.data_criacao,
    required this.data_publicacao
  });
  
}