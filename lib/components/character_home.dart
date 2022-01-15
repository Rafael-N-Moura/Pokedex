import 'package:flutter/material.dart';
import 'package:text_to_speech/models/characters.dart';
import 'package:text_to_speech/models/pokemon.dart';
import 'package:text_to_speech/models/styles.dart';
import 'package:text_to_speech/screens/character_details_screen.dart';

class CharacterHomeWidget extends StatefulWidget {
  const CharacterHomeWidget(
      {Key key,
      this.character,
      this.pageController,
      this.currentPage,
      this.generation})
      : super(key: key);
  final PokemonElement character;
  final PageController pageController;
  final int currentPage;
  final int generation;

  @override
  _CharacterHomeWidgetState createState() => _CharacterHomeWidgetState();
}

class _CharacterHomeWidgetState extends State<CharacterHomeWidget> {
  List<Color> color;

  void setColor() {
    if (widget.character.type.first == Type.BUG) {
      setState(() {
        color = [Colors.green.shade400, Colors.green.shade900];
      });
    }
    if (widget.character.type.first == Type.DARK) {
      setState(() {
        color = [Colors.black12, Colors.black87];
      });
    }
    if (widget.character.type.first == Type.DRAGON) {
      setState(() {
        color = [Colors.cyan.shade700, Colors.cyan.shade900];
      });
    }
    if (widget.character.type.first == Type.ELECTRIC) {
      setState(() {
        color = [Colors.yellow.shade300, Colors.yellow.shade600];
      });
    }
    if (widget.character.type.first == Type.FAIRY) {
      setState(() {
        color = [Colors.pink.shade700, Colors.pink.shade900];
      });
    }
    if (widget.character.type.first == Type.FIGHTING) {
      setState(() {
        color = [Colors.orange.shade700, Colors.orange.shade900];
      });
    }
    if (widget.character.type.first == Type.FIRE) {
      setState(() {
        color = [Colors.red.shade200, Colors.red.shade600];
      });
    }
    if (widget.character.type.first == Type.FLYING) {
      setState(() {
        color = [Colors.blueGrey.shade600, Colors.blueGrey.shade800];
      });
    }
    if (widget.character.type.first == Type.GHOST) {
      setState(() {
        color = [Colors.grey.shade700, Colors.grey.shade900];
      });
    }
    if (widget.character.type.first == Type.GRASS) {
      setState(() {
        color = [Colors.green.shade200, Colors.green.shade600];
      });
    }
    if (widget.character.type.first == Type.ICE) {
      setState(() {
        color = [
          Colors.lightBlueAccent.shade100,
          Colors.lightBlueAccent.shade400
        ];
      });
    }
    if (widget.character.type.first == Type.NORMAL) {
      setState(() {
        color = [Colors.grey.shade100, Colors.grey.shade400];
      });
    }
    if (widget.character.type.first == Type.POISON) {
      setState(() {
        color = [Colors.purple.shade400, Colors.deepPurple.shade700];
      });
    }
    if (widget.character.type.first == Type.PSYCHIC) {
      setState(() {
        color = [Colors.purpleAccent.shade100, Colors.purpleAccent.shade400];
      });
    }
    if (widget.character.type.first == Type.GROUND) {
      setState(() {
        color = [Colors.deepOrange.shade200, Colors.deepOrange.shade400];
      });
    }
    if (widget.character.type.first == Type.ROCK) {
      setState(() {
        color = [Colors.amber.shade100, Colors.deepPurple.shade300];
      });
    }
    if (widget.character.type.first == Type.STEEL) {
      setState(() {
        color = [Colors.indigo.shade100, Colors.deepPurple.shade300];
      });
    }
    if (widget.character.type.first == Type.WATER) {
      setState(() {
        color = [Colors.blue.shade200, Colors.blue.shade600];
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setColor();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: AnimatedBuilder(
        animation: widget.pageController,
        builder: (context, child) {
          double value = 1;
          if (widget.pageController.position.haveDimensions) {
            value = widget.pageController.page - widget.currentPage;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }
          return Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: CharacterCardBackgroundClipper(),
                  child: Hero(
                    tag: "background-${widget.character.name}",
                    child: Container(
                      height: screenHeight * 0.65,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: //character.colors ??
                              //     [
                              //   Colors.purple.shade200,
                              //   Colors.deepPurple.shade400
                              // ],
                              //[Colors.black12, Colors.black87],
                              color ?? [Colors.black12, Colors.black87],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(1, -0.90),
                child: Hero(
                  tag: "image-${widget.character.name}",
                  child: Image.network(
                    widget.character.img ?? '',
                    height: screenHeight * 0.6 * value,
                    scale: 0.5, //* character.size,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80, right: 40, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Hero(
                      tag: "name-${widget.character.name}",
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          child: Text(
                            widget.character.name ?? "Pokemon Não Encontrado",
                            style: AppTheme.heading,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Weight ${widget.character.weight}',
                      style: AppTheme.subHeading,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
