import 'package:get/get.dart';
import 'package:text_to_speech/models/pokemon.dart';
import 'package:text_to_speech/services/remote_services.dart';

class PokemonController extends GetxController {
  var pokemonList = List<PokemonElement>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchPokemon();
    super.onInit();
  }

  void fetchPokemon() async {
    try {
      var pokemon = await RemoteServices.fetchPokemon();
      if (pokemon != null) {
        pokemonList.value = pokemon.pokemon;
        print(pokemon.pokemon.first.name);
        print(pokemonList[3].name);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
