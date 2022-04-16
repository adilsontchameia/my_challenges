class SlideShowModel {
  final String imgName;
  final String imgUrl;

  SlideShowModel({
    required this.imgName,
    required this.imgUrl,
  });
}

//Constructor de imagens
List<String> slideImgs = [
  'assets/it.jpg',
  'assets/biology.jpg',
  'assets/math.jpeg',
  'assets/nurse.jpeg',
];

//Constructor de imagens
List<SlideShowModel> slideTitle = [
  SlideShowModel(
    imgName: 'Informatica Para Gestão',
    imgUrl: 'assets/it.jpg',
  ),
  SlideShowModel(
    imgName: 'Biologia',
    imgUrl: 'assets/biology.jpg',
  ),
  SlideShowModel(
    imgName: 'Matemática',
    imgUrl: 'assets/math.jpg',
  ),
  SlideShowModel(
    imgName: 'Enfermagem',
    imgUrl: 'assets/nurse.jpg',
  ),
];
