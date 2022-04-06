import 'package:ucc_info_app/src/models/course_activitie.dart';

class CourseModel {
  String courseName;
  String coorName;
  int star;
  String id;
  String imgUrl;
  List<CourseActiviti> activities;

  CourseModel({
    required this.courseName,
    required this.coorName,
    required this.star,
    required this.activities,
    required this.imgUrl,
    required this.id,
  });
}

//Informacoes da pagina dos cursos
List<CourseActiviti> activities = [
  CourseActiviti(informationCourse: 'Exemplo'),
];
//Cursos
List<CourseModel> courseModel = [
  CourseModel(
    courseName: 'Informatica Para \nGestao',
    coorName: 'Adilson Tchameia',
    star: 1,
    activities: activities,
    imgUrl: 'assets/ucc.jpeg',
    id: 'one',
  ),
  CourseModel(
    courseName: 'Biologia',
    coorName: 'Adilson Tchameia2',
    star: 2,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    id: 'two',
  ),
  CourseModel(
    courseName: 'Enfermagem',
    coorName: 'Adilson Tchameia3',
    star: 3,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    id: 'three',
  ),
  CourseModel(
    courseName: 'Matematica',
    coorName: 'Adilson Tchameia4',
    star: 4,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    id: 'four',
  ),
];
