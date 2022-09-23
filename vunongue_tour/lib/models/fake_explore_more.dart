class ExploreMoreData {
  final int id;
  final String image;
  final String province;
  final String eventTitle;
  final String location;
  final String imageBy;
  final String contact;
  final String description;

  ExploreMoreData({
    required this.id,
    required this.image,
    required this.province,
    required this.eventTitle,
    required this.location,
    required this.imageBy,
    required this.contact,
    required this.description,
  });

  static List<ExploreMoreData> places = [
    ExploreMoreData(
      id: 1,
      image: 'assets/cuito-1.jpg',
      eventTitle: 'Acampamento CSK',
      province: 'Cuando Cubango',
      location: 'Cuito Cuanavale',
      imageBy: 'CSK Studio',
      contact: '+244 922 222 222',
      description:
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
    ),
    ExploreMoreData(
      id: 2,
      image: 'assets/cuito-2.jpg',
      eventTitle: 'Feira Municipal Do Cuito Cuanavale',
      province: 'Cuando Cubango',
      location: 'Missombo',
      imageBy: 'CSK Studio',
      contact: '+244 922 222 222',
      description:
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
    ),
    ExploreMoreData(
      id: 3,
      image: 'assets/image-1.jpg',
      eventTitle: 'Festa Da Cidade De Menongue',
      province: 'Cuando Cubango',
      location: 'Menongue',
      imageBy: 'CSK Studio',
      contact: '+244 922 222 222',
      description:
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
    ),
  ];
}
