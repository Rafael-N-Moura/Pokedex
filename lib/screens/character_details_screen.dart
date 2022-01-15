import 'package:flutter/material.dart';
import 'package:text_to_speech/models/characters.dart';
import 'package:text_to_speech/models/pokemon.dart';
import 'package:text_to_speech/models/styles.dart';

class CharacterDetailScreen extends StatefulWidget {
  PokemonElement character;
  CharacterDetailScreen({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: "background-${widget.character.name}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: //widget.character.colors ??
                      [Colors.purple.shade200, Colors.deepPurple.shade400],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                IconButton(
                  iconSize: 40,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Hero(
                    tag: "image-${widget.character.name}",
                    child: Image.network(
                      widget.character.img ?? '',
                      height: screenHeight * 0.55, //* widget.character.size,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  child: Hero(
                    tag: "name-${widget.character.name}",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        child: Text(
                          widget.character.name ?? "Pokemon não encontrado",
                          style: AppTheme.heading,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 8, 32),
                  child: Text(
                      //widget.character.description ??
                      "Pokemon não encontrado",
                      style: AppTheme.subHeading),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
