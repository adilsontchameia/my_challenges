import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vunongue_tour/commoms/copyright_sign.dart';
import 'package:vunongue_tour/presentation/admin/create_place/widgets/save_button.dart';
import 'package:vunongue_tour/theme/theme.dart';

import '../../user/home/widgets/customAppBar/custom_app_bar.dart';
import '../../user/home/widgets/drawer/custom_drawer.dart';
import 'widgets/custom_label_text.dart';
import 'widgets/custom_text_form_field.dart';

class CreatePlaceScreen extends StatefulWidget {
  const CreatePlaceScreen({Key? key}) : super(key: key);

  @override
  State<CreatePlaceScreen> createState() => _CreatePlaceScreenState();
}

class _CreatePlaceScreenState extends State<CreatePlaceScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var switchValue = true;
  int _selectedIndex = 0;
  List<String> colors = const <String>[
    'Red',
    'Yellow',
    'Amber',
    'Blue',
    'Black',
    'Pink',
    'Purple',
    'White',
    'Grey',
    'Green',
  ];

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
                  children: [
                    const SizedBox(height: 25.0),
                    const CustomLabelText(text: '1.1 Nome do Local'),
                    const SizedBox(height: 5.0),
                    const CustomTextFormField(
                      initialValue: 'Missombo',
                      hintText: 'Insere um nome',
                      validatorText: 'Por favor insira um nome valido.',
                      icon: FontAwesomeIcons.locationPin,
                    ),
                    const SizedBox(height: 5.0),
                    const CustomLabelText(text: '1.2 Municipio'),
                    const SizedBox(height: 5.0),
                    const CustomTextFormField(
                      initialValue: 'Menongue',
                      hintText: 'Insere um nome',
                      validatorText: 'Por favor insira um nome valido.',
                      icon: FontAwesomeIcons.mapLocation,
                    ),
                    const SizedBox(height: 5.0),
                    const CustomLabelText(text: '1.3 Imagem'),
                    const SizedBox(height: 5.0),
                    const CustomTextFormField(
                      initialValue: 'CSK Studio',
                      hintText: 'Insere um nome',
                      validatorText: 'Por favor insira um nome valido.',
                      icon: FontAwesomeIcons.image,
                    ),
                    const CustomLabelText(text: '1.4 Contacto'),
                    const SizedBox(height: 5.0),
                    const CustomTextFormField(
                      initialValue: '922 222 222',
                      hintText: 'Insere um nome',
                      validatorText: 'Por favor insira um nome valido.',
                      icon: FontAwesomeIcons.book,
                    ),
                    const CustomLabelText(text: '1.4 Descricao'),
                    const SizedBox(height: 5.0),
                    const CustomTextFormField(
                      initialValue:
                          'Exemplo de uma descricao que pode ser escrita aqui, contudo.',
                      hintText: 'Insere um nome',
                      validatorText: 'Por favor insira um nome valido.',
                      icon: FontAwesomeIcons.textHeight,
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomLabelText(text: '1.5 Categorias'),
                          CupertinoButton(
                            child: Row(
                              children: [
                                const FaIcon(FontAwesomeIcons.arrowDownAZ,
                                    color: VunongueColors.blue),
                                const SizedBox(width: 5.0),
                                Text(
                                  'Categoria: ${colors.first}',
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: VunongueColors.blue),
                                ),
                              ],
                            ),
                            onPressed: () {
                              if (Platform.isIOS) {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 200.0,
                                      child: CupertinoPicker(
                                          itemExtent: 30.0,
                                          onSelectedItemChanged: (int index) {
                                            setState(() {
                                              _selectedIndex = index;
                                            });
                                          },
                                          children: List<Widget>.generate(
                                              colors.length, (int index) {
                                            return Center(
                                              child: Text(colors[index]),
                                            );
                                          })),
                                    );
                                  },
                                );
                              } else if (!Platform.isAndroid) {
                                debugPrint('Android');
                              }
                            },
                          ),
                        ]),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomLabelText(
                            text: switchValue
                                ? '1.6 Adicionar Um Local'
                                : '1.6 Adicionar Um Evento'),
                        CupertinoSwitch(
                            value: switchValue,
                            onChanged: (changedValue) {
                              setState(() {
                                switchValue = changedValue;
                              });
                            })
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    SaveButton(onTap: () => debugPrint('Salvo')),
                    const CopyrightSign(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
