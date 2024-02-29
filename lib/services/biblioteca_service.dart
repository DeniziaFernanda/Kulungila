import 'package:kulungila/models/classificacao_model.dart';
import 'package:kulungila/models/livro_model.dart';
import 'package:kulungila/models/user_model.dart';

class BibliotecaService {
  static Future<List<LivroModel>> getSugestoes() async {
    List<LivroModel> sugestoes = [];

    sugestoes.addAll([
       LivroModel(
        idLivro: 1, 
        titulo: "titulo 1", 
        autor: UserModel(idUser: 1, username: "username 1", nome_completo: "nome_completo 1", email: "email 1", telefone: "telefone 1", senha: "senha 1", imagem: "imagem", fk_localidade: "fk_localidade 1", data_nascimento: "data_nascimento", data_cadastro: DateTime(2024, 2, 2), sexo: "sexo 1"), 
        sinopse: "sinopse 1", 
        imagem: "imagem 1", 
        classificacao: ClassificacaoModel(idClassificacao: 1, classificacao: "+18", descricao: "descricao 1"), 
        data_criacao: DateTime(2020, 2, 2), 
        data_publicacao: DateTime(2021, 2, 2),
      ),
       LivroModel(
        idLivro: 2, 
        titulo: "titulo 2", 
        autor: UserModel(idUser: 2, username: "username 2", nome_completo: "nome_completo 2", email: "email 2", telefone: "telefone 2", senha: "senha 2", imagem: "imagem", fk_localidade: "fk_localidade 2", data_nascimento: "data_nascimento", data_cadastro: DateTime(2024, 2, 2), sexo: "sexo 2"), 
        sinopse: "sinopse 2", 
        imagem: "imagem 2", 
        classificacao: ClassificacaoModel(idClassificacao: 1, classificacao: "+18", descricao: "descricao 1"), 
        data_criacao: DateTime(2018, 2, 2), 
        data_publicacao: DateTime(2020, 2, 2),
      ),

    ]);

    return sugestoes;
  }
}