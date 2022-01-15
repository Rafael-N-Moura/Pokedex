import 'package:http/http.dart' as http;
import 'package:text_to_speech/models/pokemon.dart';

class RemoteServices {
  static var client = http.Client();
  static Future<Pokemon> fetchPokemon() async {
    var response = await client.get(
      Uri.parse(
          'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return pokemonFromJson(jsonString);
    } else {
      //Show error
      return null;
    }
  }
}
