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
    imgUrl: 'assets/img.JPG',
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
    imgUrl: 'assets/img.JPG',
    workAt:
        'O profissional que se concebe tem que se comprometer com os resultados de sua ações, pautando sua conduta profissional por critérios humanistas, de rigor científico e referenciais éticos, legais e cívicos. O Professor que se pretende formar deve ter o seguinte perfil: • Possuir formação básica, ampla e sólida, com adequada fundamentação teórico-prática que inclua conhecimento da diversidade dos seres vivos, sua organização, suas relações, suas distribuições e relações com o ambiente em que vivem; • Entender o processo histórico de construção do conhecimento na área biológica com relação a conceitos, princípios e teorias; • Estar capacitado para a busca autônoma, produção e divulgação do conhecimento, proporcionando visão das possibilidades presentes e futuras da profissão; • Compreender o significado e a importância da Biologia para a sociedade e, sua responsabilidade como educador nos contextos de sua atuação profissional; • Pautar sua conduta por critérios humanísticos, de rigor científico, referenciais éticos, legais e cívicos. Nos campos de atuação do profissional, o Licenciado em Biologia poderá exercer as seguintes funções: • Como decente: ministrar aulas, em escolas públicas e privadas, no ensino de Ciências no nível Básico, no Médio e Superior de Biologia, em todo o território nacional. • Como Biólogo: atuar em laboratórios de microbiologia, zoologia, melhoramento genético e muitos outros; tendo suas atividades e responsabilidades técnicas reguladas pelos Conselhos de Biologia.',
    info:
        'Formar professores de Biologia para leccionarem ciências da natureza no IIº ciclo do Ensino Secundário e de adultos, para as Escolas de formação de professores e escolas de formação profissional. O Licenciado formado em biologia na Escola Superior Politecnica de Ondjiva deverá servir o sistema educativo, na concepção de projectos do sistema escolar e do ensino da biologia, assim como em programas de intervenção sócio – educativa em relação ao meio ambiente, sendo capaz de formular objectivos educacionais, tomar decisões pedagógicas e didácticas na sala de aulas e noutros contextos educacionais, analisar criticamente a prática do ensino da biologia nas instituições educativas e conduzir o processo docente educativo e a respectiva avaliação.',
    years: 5,
    feedbacks: '14',
  ),
  CourseModel(
    courseName: 'Enfermagem',
    coorName: 'Anair Calembe',
    star: 5,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    workAt:
        'O Licenciado em enfermagem deve ser um profissional com as seguintes capacidades e habilidades: assumir o cuidado integral do paciente com distintos graus de risco e dentro de especializações críticas; gerenciar enfermagem em instituições de saúde pública, desenvolver linhas de pesquisa para fortalecer e inovar práticas profissionais; planear, implementar e avaliar as acções para a promoção da saúde e prevenção de doenças, nas Unidades Hospitalares públicas ou privadas; Clínicas; Centros de Saúde; Núcleos e Organizações Desportivas; Casas de Repouso; Empresas; Docência; Investigação.',
    info:
        'O licenciado em Enfermagem pela Universidade Jean Piaget de Angola terá formação técnico-científica sustentada em conhecimentos e aptidões ao nível do planeamento, execução e avaliação dos cuidados de enfermagem à pessoa saudável ou doente, ao longo do ciclo vital, à família, grupos e comunidade em todos os níveis de prevenção; A licenciatura em Enfermagem propõe-se educar e formar profissionais, treinar enfermeiros e graduados em enfermagem para o desenvolvimento de acções para a promoção da saúde, prevenção de doenças e assistência e reabilitação do homem doente, promover a formação epistemológica sólida e ética, como base para a prática profissional; trabalhar a sua formação teórica - prática a fim de permitir-lhes realizar consultoria e assessoria a instituições intermediárias e à comunidade; incentivar a pesquisa científica e actualização de conhecimentos.',
    years: 4,
    feedbacks: '20',
  ),
  CourseModel(
    courseName: 'Matemática',
    coorName: 'Nelson Tchinoia',
    star: 3.0,
    activities: activities,
    imgUrl: 'assets/img.JPG',
    workAt:
        'Técnico Superior com competências para : Leccionar Matemática em instituições públicas e/ou privadas ; Resolver os problemas com que se venha deparar no desempenho das suas actividades.',
    info:
        'O Curso de Ensino da Matemática do Departamento de Ciências Exactas do ISCED – Luanda é um curso superior cuja missão é a de formar professores de Matemática para o ensino secundário geral, normal médio e técnico. Apostamos na formação de um Técnico Superior com sólidos conhecimentos, habilidades e capacidades no estudo do Ensino da Matemática.',
    years: 4,
    feedbacks: '11',
  ),
];
