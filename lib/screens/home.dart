import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:text_to_speech/components/character_home.dart';
import 'package:text_to_speech/controllers/pokemon_controller.dart';
import 'package:text_to_speech/models/characters.dart';
import 'package:text_to_speech/models/styles.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PokemonController pokemonController = Get.put(PokemonController());
  final FlutterTts speakA = FlutterTts();

  bool _folded = true;

  void letsTalk() async {
    await speakA.setLanguage("en-US");
    await speakA.speak('This is American English or Britain English?');
  }

  int currentPage = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 80,
        toolbarHeight: 80,
        leading: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white,
                    boxShadow: kElevationToShadow[1],
                  ),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.add,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ), //Icon(Icons.arrow_back_ios_new),
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 15.0),
          //   child: Icon(Icons.search, size: 30),
          // ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  AnimatedContainer(
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    duration: Duration(milliseconds: 400),
                    width: _folded ? 56 : 200,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
                      boxShadow: kElevationToShadow[1],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 16),
                            child: !_folded
                                ? TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                        color: Colors.blue[300],
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(
                            milliseconds: 400,
                          ),
                          child: Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(_folded ? 32 : 0),
                                topRight: Radius.circular(32),
                                bottomLeft: Radius.circular(_folded ? 32 : 0),
                                bottomRight: Radius.circular(32),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(
                                  _folded ? Icons.search : Icons.close,
                                  color: Colors.blue[900],
                                ),
                              ),
                              onTap: () {
                                setState(
                                  () {
                                    _folded = !_folded;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 8),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Pocket Monsters',
                      style: AppTheme.display1,
                    ),
                    TextSpan(
                      text: '\n',
                    ),
                    TextSpan(
                      text: 'Generations',
                      style: AppTheme.display2,
                    ),
                  ],
                ),
              ),
            ),
            Obx(
              () => Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    for (var i = 0;
                        i < pokemonController.pokemonList.length;
                        i++)
                      CharacterHomeWidget(
                        character: pokemonController.pokemonList[i],
                        pageController: _pageController,
                        currentPage: i,
                        generation: i + 1,
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
