class PlacesData {
  final int id;
  final String image;
  final String province;
  final String placeTitle;
  final String location;
  final String imageBy;
  final String contact;
  final String description;
  final String rate;
  final List<String> tags;
  bool isPlace = true;
  PlacesData({
    required this.id,
    required this.image,
    required this.placeTitle,
    required this.province,
    required this.location,
    required this.imageBy,
    required this.contact,
    required this.description,
    required this.rate,
    required this.tags,
    required this.isPlace,
  });

  static List<PlacesData> places = [
    PlacesData(
      id: 1,
      image: 'assets/cuito-1.jpg',
      placeTitle: 'Museu Historico Da Batalha do Cuito Cuanavale',
      province: 'Cuando Cubango',
      location: 'Cuito Cuanavale',
      imageBy: 'CSK Studio',
      contact: '+244 922 222 222',
      description:
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
      rate: '4,5',
      tags: ['Hotel', 'Turismo', 'Lazer'],
      isPlace: true,
    ),
    PlacesData(
      id: 2,
      image: 'assets/cuito-2.jpg',
      placeTitle: 'Quedas do Missombo',
      province: 'Cuando Cubango',
      location: 'Missombo',
      imageBy: 'CSK Studio',
      contact: '+244 922 222 222',
      description:
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
      rate: '4',
      tags: ['Hotel', 'Turismo', 'Lazer'],
      isPlace: true,
    ),
    PlacesData(
      id: 3,
      image: 'assets/image-1.jpg',
      placeTitle: 'Estatua Mwene Vunongue',
      province: 'Cuando Cubango',
      location: 'Menongue',
      imageBy: 'CSK Studio',
      contact: '+244 922 222 222',
      description:
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
      rate: '2,5',
      tags: ['Hotel', 'Turismo', 'Lazer'],
      isPlace: true,
    ),
    PlacesData(
      id: 4,
      image: 'assets/leba.jpeg',
      placeTitle: 'Fronteira Namibia x Angola',
      province: 'Cuando Cubango',
      location: 'Cuanagar',
      imageBy: 'CSK Studio',
      contact: '+244 922 222 222',
      description:
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
      rate: '5',
      tags: ['Hotel', 'Turismo', 'Lazer'],
      isPlace: true,
    ),
    PlacesData(
      id: 5,
      image: 'assets/onboard-image.jpg',
      placeTitle: 'Lugar Historico No Cuchi',
      province: 'Cuando Cubango',
      location: 'Cuchi',
      imageBy: 'CSK Studio',
      contact: '+244 922 222 222',
      description:
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
      rate: '2.1',
      tags: ['Hotel', 'Turismo', 'Lazer'],
      isPlace: true,
    ),
  ];
}
