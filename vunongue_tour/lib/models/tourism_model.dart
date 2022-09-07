class PlacesModel {
  final String localName;
  final String provName;
  final String muniName;
  final String fotoName;
  final String contactName;
  final String description;
  final String fotoPath;
  final List<String>? fotosPath;

  PlacesModel({
    required this.localName,
    required this.provName,
    required this.muniName,
    required this.fotoName,
    required this.contactName,
    required this.description,
    required this.fotoPath,
    required this.fotosPath,
  });
}

//Cursos
List<PlacesModel> placesModel = [
  PlacesModel(
      localName: 'Museu da Batalha do Cuito Cuanavale',
      provName: 'Cuando Cubango',
      muniName: 'Cuito Cuanvale',
      fotoName: 'CSK Studio',
      contactName: '+244 922 933 944',
      description:
          'Esse e um exemplo de como um exemplo pode ser bom exemplo para um exemplo mais sofisticado, com esse exemplo podemos dizer que o exemplo exemplo.',
      fotoPath: 'assets/cuito-1',
      fotosPath: ['assets/cuito-1', 'assets/cuito-2']),
  PlacesModel(
    localName: 'Miradouro da Leba',
    provName: 'Huila',
    muniName: 'Lubango',
    fotoName: 'Adilson Tchameia',
    contactName: '+244 922 933 944',
    description:
        'Esse e um exemplo de como um exemplo pode ser bom exemplo para um exemplo mais sofisticado, com esse exemplo podemos dizer que o exemplo exemplo.',
    fotoPath: 'assets/cuito-1',
    fotosPath: [],
  ),
];
