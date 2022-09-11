import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vunongue_tour/theme/theme.dart';

import '../../user/home/widgets/customAppBar/custom_app_bar.dart';
import '../../user/home/widgets/drawer/custom_drawer.dart';

class CreatePlaceScreen extends StatelessWidget {
  CreatePlaceScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: CustomAppBar(text: 'Adicionar um Local'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/cuito-1.jpg'),
                    ),
                  ),
                ),
              ),
              Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      SizedBox(height: 25.0),
                      CustomLabelText(text: '1.1 Nome do Local'),
                      SizedBox(height: 5.0),
                      CustomTextFormField(
                        initialValue: 'Missombo',
                        hintText: 'Insere um nome',
                        validatorText: 'Por favor insira um nome valido.',
                        icon: FontAwesomeIcons.locationPin,
                      ),
                      SizedBox(height: 5.0),
                      CustomLabelText(text: '1.2 Municipio'),
                      SizedBox(height: 5.0),
                      CustomTextFormField(
                        initialValue: 'Menongue',
                        hintText: 'Insere um nome',
                        validatorText: 'Por favor insira um nome valido.',
                        icon: FontAwesomeIcons.mapLocation,
                      ),
                      SizedBox(height: 5.0),
                      CustomLabelText(text: '1.3 Imagem'),
                      SizedBox(height: 5.0),
                      CustomTextFormField(
                        initialValue: 'CSK Studio',
                        hintText: 'Insere um nome',
                        validatorText: 'Por favor insira um nome valido.',
                        icon: FontAwesomeIcons.image,
                      ),
                      CustomLabelText(text: '1.4 Contacto'),
                      SizedBox(height: 5.0),
                      CustomTextFormField(
                        initialValue: '922 222 222',
                        hintText: 'Insere um nome',
                        validatorText: 'Por favor insira um nome valido.',
                        icon: FontAwesomeIcons.book,
                      ),
                      CustomLabelText(text: '1.4 Descricao'),
                      SizedBox(height: 5.0),
                      CustomTextFormField(
                        initialValue:
                            'Exemplo de uma descricao que pode ser escrita aqui, contudo.',
                        hintText: 'Insere um nome',
                        validatorText: 'Por favor insira um nome valido.',
                        icon: FontAwesomeIcons.textHeight,
                      ),
                      SizedBox(height: 10.0),
                      CustomLabelText(text: '1.5 Categorias'),
                      SizedBox(height: 10.0),
                      CustomLabelText(text: '1.5 Evento ou Local ?'),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLabelText extends StatelessWidget {
  const CustomLabelText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: VunongueColors.blue,
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.initialValue,
    required this.hintText,
    required this.validatorText,
    required this.icon,
  }) : super(key: key);
  final String initialValue;
  final String hintText;
  final String validatorText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      textCapitalization: TextCapitalization.words,
      initialValue: initialValue,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20.0),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FaIcon(icon),
        ),
        hintText: hintText,
        border: InputBorder.none,
      ),
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
      validator: (placeName) {
        if (placeName!.length < 3) {
          return validatorText;
        } else {
          return null;
        }
      },
    );
  }
}

//pinLocation - Nome do Local
//mapLocation - Municipio (exe: Cuando Cubango - Cuito Cuanavale) - Provincia e padrao
//image: by CSK STUDIO ou outra
//contacto: 2 numeros ao maximo (list tile que nem da loja virtual)
//description: descricao
//categoria (dropdown)

//anuncio + local no mesmo lugar
//switch pra definir o que o outro fara
