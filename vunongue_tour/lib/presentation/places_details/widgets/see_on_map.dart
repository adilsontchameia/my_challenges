import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SeeOnMap extends StatelessWidget {
  const SeeOnMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Material(
        child: Container(
          height: 50.0,
          width: 200.0,
          decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(30.0))),
          child: const ListTile(
            dense: true,
            title: Text('Ver No Mapa',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            leading: FaIcon(
              FontAwesomeIcons.mapPin,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
