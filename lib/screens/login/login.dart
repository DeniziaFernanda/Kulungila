import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kulungila/screens/login/tags_for_read.dart';
import 'package:kulungila/utils/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _fullNameUserController = TextEditingController();
  final _userController = TextEditingController();
  final _dataNascimentoController = TextEditingController();
  String gender = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context)
                .size
                .height, // Define a altura do Container como a altura da tela
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Faça parte do ',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Kulungila',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: corPrincipal),
                          ),
                          Text(
                            ', ',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'plataforma de leitura e escrita',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Text(
                    'Alguns dados como a idade serão necessários para uma melhor classificação de conteúdos para o usuário final',
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20), // Borda circular
                          border: const Border(
                            left: BorderSide(
                                width: 5,
                                color: corPrincipal), // Borda à esquerda
                            right: BorderSide(
                                width: 5,
                                color: corPrincipal), // Borda à direita
                            top: BorderSide(
                                width: 5, color: corPrincipal), // Borda no topo
                            bottom: BorderSide(
                                width: 12,
                                color: corPrincipal), // Borda por baixo
                          ),
                          color: corPrincipal,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 18, left: 15, right: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20), // Borda circular
                          border: Border(
                            left: BorderSide(
                                width: 5,
                                color:
                                    corPrincipal.shade200), // Borda à esquerda
                            right: BorderSide(
                                width: 5,
                                color:
                                    corPrincipal.shade200), // Borda à direita
                            top: BorderSide(
                                width: 5,
                                color: corPrincipal.shade200), // Borda no topo
                            bottom: BorderSide(
                                width: 12,
                                color:
                                    corPrincipal.shade200), // Borda por baixo
                          ),
                          color: corPrincipal.shade200,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 23, left: 15, right: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20), // Borda circular
                          border: const Border(
                            left: BorderSide(
                                width: 5,
                                color: Colors.white), // Borda à esquerda
                            right: BorderSide(
                                width: 5,
                                color: Colors.white), // Borda à direita
                            top: BorderSide(
                                width: 5, color: Colors.white), // Borda no topo
                            bottom: BorderSide(
                                width: 12,
                                color: Colors.white), // Borda por baixo
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextFormField(
                                controller: _userController,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromRGBO(95, 91, 91, 0.03),
                                  hintText: 'Nome de Usuario',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide:
                                        BorderSide(color: Color(0X4DBABABA)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                        color: corPrincipal,
                                        width: 2.0,
                                      )),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(15),
                                ),
                              ),
                              TextFormField(
                                controller: _fullNameUserController,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromRGBO(95, 91, 91, 0.03),
                                  hintText: 'Nome Completo',
                                  hintStyle:  TextStyle(fontSize: 15),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide:
                                        BorderSide(color: Color(0X4DBABABA)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                        color: corPrincipal,
                                        width: 2.0,
                                      )),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(15),
                                ),
                              ),
                              TextFormField(
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromRGBO(95, 91, 91, 0.03),
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Color(0X4DBABABA)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                        color: corPrincipal,
                                        width: 2.0,
                                      )),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(15),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      'Gênero',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      buildGenderSelection(
                                          'Feminino', Icons.female),
                                      buildGenderSelection(
                                          'Masculino', Icons.male),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: TextFormField(
                                  controller: _dataNascimentoController,
                                  decoration: InputDecoration(
                                    fillColor: corPrincipal.shade50,
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    hintText: "Data Nascimento",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Color(0X4DBABABA)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            color: Color(0X4DBABABA))),
                                    hintStyle: const TextStyle(fontSize: 15),
                                    prefixIcon: const Icon(
                                      Icons.calendar_today,
                                      size: 16,
                                      color: Color(0X4DBABABA),
                                    ),
                                  ),
                                  readOnly: true,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2101));

                                    if (pickedDate != null) {
                                      //print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                      String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                      //print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                      //you can implement different kind of Date Format here according to your requirement
                                      setState(() {
                                        _dataNascimentoController.text =
                                            formattedDate; //set output date to TextField value.
                                      });
                                    } 
                                  },
                                ),
                              ),
                              SizedBox(
                                  height: 50.0,
                                  width: double.infinity,
                                  //color: Color(0xFFF58008),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TagsRead()),
                                        );
                                    },
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                corPrincipal),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ))),
                                    child: const Text('Começar',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  )),
                              Row(
                                children: <Widget>[
                                  const Text(
                                    'Já tem uma conta? ',
                                    style: TextStyle(
                                      color: Color(0xFF5F5B5B),
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TagsRead()),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                          foregroundColor: corPrincipal,
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                      child: const Text('Clique aqui!')),
                                  SizedBox(
                                      height: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGenderSelection(String title, IconData iconData) {
    return GestureDetector(
      onTap: () {
        setState(() {
          gender = title;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: gender == title ? corPrincipal : Colors.grey,
              ),
              color: gender == title ? corPrincipal.shade50 : Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  iconData,
                  color: gender == title ? corPrincipal : Colors.grey,
                  size: 35,
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
