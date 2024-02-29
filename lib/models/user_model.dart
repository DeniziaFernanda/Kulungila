class UserModel {
  int idUser;
  String username;
  String nome_completo;
  String email;
  String telefone;
  String senha;
  String imagem;
  String fk_localidade;
  String data_nascimento;
  DateTime data_cadastro;
  String sexo;

  UserModel({
    required this.idUser,
    required this.username,
    required this.nome_completo,
    required this.email,
    required this.telefone,
    required this.senha,
    required this.imagem,
    required this.fk_localidade,
    required this.data_nascimento,
    required this.data_cadastro,
    required this.sexo,
  });
  
}