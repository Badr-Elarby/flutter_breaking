import 'package:flutter/material.dart';
import 'package:flutter_breaking/constants/my_colours.dart';
import 'package:flutter_breaking/data/models/characters.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColours.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        child: Container(
          color: MyColours.myGrey,
          child:
              character.image.isNotEmpty
                  ? FadeInImage.assetNetwork(
                    placeholder: "assets/images/loading.gif",
                    image: character.image,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  )
                  : Image.asset('assets/images/placeholder.png'),
        ),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            '${character.name}',
            style: TextStyle(
              height: 1.3,
              fontSize: 16,
              color: MyColours.myWhite,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
