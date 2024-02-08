class OnbordingContent {
  String image;
  String description1;
  String description2;

  OnbordingContent(
      {
      required this.image,
      required this.description1,
      required this.description2});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      image: 'assets/images/Hand holding pen-rafiki.png',
      description1: 'Encontre as melhores histórias',
      description2: 'e divirta-se no fantástico mundo da leitura!'),

  OnbordingContent(
      image: 'assets/images/Creative writing-cuate.png',
      description1: 'No Kulungila você poderá',
      description2: 'ler e escrever histórias fascinantes!'),
];
