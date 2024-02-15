import 'package:flutter/material.dart';
import 'package:kulungila/utils/colors.dart';

class TagsRead extends StatefulWidget {
  const TagsRead({Key? key}) : super(key: key);

  @override
  State<TagsRead> createState() => _TagsReadState();
}

class _TagsReadState extends State<TagsRead> {
  List<String> selectedTags = [];
  int selectedTagsCount = 0;
  final int maxTags = 6;

  double getTextWidth(String text, TextStyle style, BuildContext context) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text),
      textDirection: TextDirection.ltr,
      maxLines: 1, // Defina o número máximo de linhas como 1
    )..layout(maxWidth: MediaQuery.of(context).size.width);

    return textPainter.width;
  }

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
                  child: Text(
                    'Temos variados tópicos de leitura',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Text(
                    'O que você gostaria de ler?',
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
                              vertical: 15, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Escolha os tópicos que você gosta',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '${selectedTags.length}/$maxTags',
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Wrap(
                                      spacing: 2,
                                      runSpacing: 1,
                                      children: buildTagsSelections(context),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: 50.0,
                                  width: double.infinity,
                                  //color: Color(0xFFF58008),
                                  child: ElevatedButton(
                                    onPressed: () {},
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

  List<Widget> buildTagsSelections(BuildContext context) {
    return [
      buildTagsSelection(
          'Amor apaixonado', Icons.heart_broken, Colors.red, context),
      buildTagsSelection(
          'Primeiro Amor', Icons.monitor_heart, Colors.red, context),
      buildTagsSelection('Apaixonei -me por um rapaz rui', Icons.heart_broken,
          Colors.red, context),
      buildTagsSelection(
          'Amor Cotidiano', Icons.monitor_heart, Colors.red, context),
      buildTagsSelection(
          'Casamento contratual', Icons.monitor_heart, Colors.red, context),
      // Add more buildTagsSelection widgets here as needed
    ];
  }

  Widget buildTagsSelection(
      String title, IconData iconData, Color iconColor, BuildContext context) {
    final bool isSelected = selectedTags.contains(title);

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedTags.remove(title);
          } else {
            if (selectedTags.length < maxTags) {
              selectedTags.add(title);
            }
          }
        });
      },
      child: SizedBox(
        width: getTextWidth(title, const TextStyle(fontSize: 10), context) + 60,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? corPrincipal : Colors.grey,
                ),
                color: isSelected ? corPrincipal.shade50 : Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    color: iconColor,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
