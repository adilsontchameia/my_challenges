import 'package:ucc_info_app/src/models/course_activitie.dart';

class CourseModel {
  final String courseName;
  final String coorName;
  final double star;
  final String imgUrl;
  final String info;
  final String workAt;
  final int years;
  final String feedbacks;

  List<CourseActiviti> activities;

  CourseModel({
    required this.courseName,
    required this.coorName,
    required this.star,
    required this.imgUrl,
    required this.info,
    required this.workAt,
    required this.years,
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
    courseName: 'Informatica de Gestão',
    coorName: 'Alberto Vatal',
    star: 2.2,
    activities: activities,
    imgUrl: 'assets/it.jpg',
    workAt:
        'O licenciado em Engenharia Informática de Gestão possui competências para se integrar no mercado de trabalho a vários níveis: \n➤ Consultoria e assessoria de projectos informáticos; \n➤ Instituições públicas ou privadas de saúde; \n➤ Empresas de marketing, publicidade e multimédia; \n➤ Gestores de projectos informáticos em diversos domínios industriais; \n➤ Projectos na área da banca, seguros e telecomunicações; \n➤ Empresas de serviços para a Internet e de desenvolvimento WEB. ',
    years: 4,
    info:
        'É uma licenciatura de nova geração que resulta da integração de duas áreas importantes de desenvolvimento científico: uma ciência técnica e de existência recente, a Informática, e outra social e mais antiga, a Gestão. O objectivo passa pela formação de pessoas capazes de levarem para o terreno tradicional das Tecnologias de Informação (TI) – as grandes e médias organizações – a inovação e competência técnica no domínio das TI aliado a conhecimentos de Gestão.',
    feedbacks: '5',
  ),
  CourseModel(
    courseName: 'Biologia',
    coorName: 'Yago Tchameia',
    star: 4.5,
    activities: activities,
    imgUrl: 'assets/biology.jpg',
    workAt:
        'Os Licenciados poderão desempenhar-se como: \n➤ Compreender as teorias científicas contemporâneas das ciências biológicas, para a permanente actualização dos conteúdos de Ciências da Natureza, Biologia e outras do ensino primário e secundário, em correspondência com o contexto social; \n➤ Demonstrar o domínio profundo dos fundamentos teórico-conceptuais para a integração do contexto no processo de ensino-aprendizagem da Biologia, numa perspectiva da contextualização curricular;Demonstrar o domínio dos fundamentos da educação e da formação biológica, para a solução dos problemas profissionais de forma interdisciplinar e com o recurso às tecnologias que propiciem a formação integral do aluno; \n➤ Ser capaz de dar resposta às exigências da sociedade no âmbito de educação, conservação dos recursos naturais, ambiente, saúde pública e comunitária; \n➤ Ter aptidões para manusear os instrumentos e recursos didácticos da sua especialidade;',
    info:
        'O curso tem por finalidade Formar profissionais na área de Ensino de Biologia, que assegurem as Unidades Curriculares constantes no plano curricular do Ensino Secundário e Técnico-profissional, bem como, para o desenvolvimento de actividades científicas e técnicas em áreas afins, tendo os seguintes Objectivos específicos: \n➤ Formar quadros capazes de responder as exigências da sociedade no âmbito da educação e adicionalmente nas áreas de conservação de recursos naturais, ambiente, saúde pública, comunitária e áreas afins; \n➤ Desenvolver pesquisas nas diversas áreas da ciência biológica que propicie uma visão crítico-reflexiva da prática educativa; \n➤ Desenvolver atitudes investigativas de modo a despertar nos estudantes a busca constante pela actualização dos conhecimentos científicos na área; \n➤ Elaborar currículos, programas e recursos didáctico-pedagógicos adequados à prática educativa; \n➤ Actuar em equipas multidisciplinares destinadas a planear, coordenar, executar ou avaliar actividades relacionadas com a Biologia, ou áreas afins; \n➤ Enfatizar a formação cultural e humanística baseada nos valores éticos e profissionais.',
    years: 5,
    feedbacks: '14',
  ),
  CourseModel(
    courseName: 'Enfermagem',
    coorName: 'Anair Calembe',
    star: 5,
    activities: activities,
    imgUrl: 'assets/nurse.jpeg',
    workAt:
        'O Licenciado em enfermagem devera ser um profissional com as seguintes capacidades e habilidades: \n➤ Assumir o cuidado integral do paciente com distintos graus de risco e dentro de especializações críticas; \n➤ Gerenciar enfermagem em instituições de saúde pública, desenvolver linhas de pesquisa para fortalecer e inovar práticas profissionais; \n➤ Planear, implementar e avaliar as acções para a promoção da saúde e prevenção de doenças, nas Unidades Hospitalares públicas ou privadas;',
    info:
        'O licenciado em Enfermagem terá formação técnico-científica sustentada em conhecimentos e aptidões ao nível do planeamento, execução e avaliação dos cuidados de enfermagem à pessoa saudável ou doente, ao longo do ciclo vital, à família, grupos e comunidade em todos os níveis de prevenção; A licenciatura em Enfermagem propõe-se educar e formar profissionais, treinar enfermeiros e graduados em enfermagem para o desenvolvimento de acções para a promoção da saúde, prevenção de doenças e assistência e reabilitação do homem doente, promover a formação epistemológica sólida e ética, como base para a prática profissional;',
    years: 4,
    feedbacks: '20',
  ),
  CourseModel(
    courseName: 'Matemática',
    coorName: 'Nelson Tchinoia',
    star: 3.0,
    activities: activities,
    imgUrl: 'assets/math.jpeg',
    workAt:
        'Técnico Superior com competências para : \n➤ Leccionar Matemática em instituições públicas e/ou privadas; \n➤ Resolver os problemas com que se venha deparar no desempenho das suas actividades.',
    info:
        'O Curso de Ensino da Matemática é um curso superior cuja missão é a de formar professores de Matemática para o ensino secundário geral, normal médio e técnico. Apostamos na formação de um Técnico Superior com sólidos conhecimentos, habilidades e capacidades no estudo do Ensino da Matemática.',
    years: 4,
    feedbacks: '11',
  ),
];
