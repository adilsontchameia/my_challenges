import 'package:ucc_info_app/src/models/course_activitie.dart';

class CourseModel {
  final String courseName;
  final String coorName;
  final double star;
  final String imgUrl;
  final String info;
  final String feedbacks;

  List<CourseActiviti> activities;

  CourseModel({
    required this.courseName,
    required this.coorName,
    required this.star,
    required this.imgUrl,
    required this.info,
    required this.feedbacks,
    required this.activities,
  });
}

//Informacoes da pagina dos cursos
List<CourseActiviti> activities = [
  CourseActiviti(informationCourse: 'Exemplo1'),
];
//Cursos
List<CourseModel> courseModel = [
  CourseModel(
    courseName: 'Informatica Para Gestao',
    coorName: 'Adilson Tchameia1',
    star: 2.2,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    info:
        'É uma licenciatura de nova geração que resulta da integração de duas áreas importantes de desenvolvimento científico: uma ciência técnica e de existência recente, a Informática, e outra social e mais antiga, a Gestão. O objectivo passa pela formação de pessoas capazes de levarem para o terreno tradicional das Tecnologias de Informação (TI) – as grandes e médias organizações – a inovação e competência técnica no domínio das TI aliado a conhecimentos de Gestão.',
    feedbacks: '5',
  ),
  CourseModel(
    courseName: 'Biologia',
    coorName: 'Adilson Tchameia2',
    star: 4.5,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    info:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ',
    feedbacks: '14',
  ),
  CourseModel(
    courseName: 'Enfermagem',
    coorName: 'Adilson Tchameia3',
    star: 5,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    info:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ',
    feedbacks: '20',
  ),
  CourseModel(
    courseName: 'Matematica',
    coorName: 'Adilson Tchameia4',
    star: 3.0,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    info:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ',
    feedbacks: '11',
  ),
];
