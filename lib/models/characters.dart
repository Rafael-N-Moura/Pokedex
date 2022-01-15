import 'package:flutter/material.dart';

class Character {
  Character(
      {this.name, this.imagePath, this.description, this.colors, this.size});

  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;
  final double size;
}

List characters = [
  Character(
    name: "Gengar",
    imagePath:
        "https://drive.google.com/uc?export=view&id=138jL5fxyjdzEFR2ze4E16HzrYCCqs3PP",
    description:
        "Gengar is a dark purple, bipedal Pokémon with a roundish body. It has red eyes, a wide mouth that is usually curled into a sinister grin, and pointed ears. On its back are numerous spikes and it has smaller spikes on top of its head similar to tufty fur. Its arms and legs are short with three digits on both its hands and feet. It also has a stubby tail. Gengar has the ability to hide perfectly in the shadow of any object, granting it exceptional stealth. However, Gengar's body acts as a heat sink. Its presence cools the temperature of the surrounding area by nearly 10°F (5°C), because it absorbs the warmth. The anime has shown that Gengar can fly and possess people and other Pokémon, and the Pokétoon episode, I turned into a Gengar?!, shows that its large tongue can extend to several meters. In the past, Night Shade was its signature move.",
    colors: [Colors.purple.shade200, Colors.deepPurple.shade400],
    size: 1,
  ),
  Character(
    name: "Typlosion",
    imagePath:
        "https://drive.google.com/uc?export=view&id=15TlVgkyzJkah2-iQqZ9c9sz7M06bFqvO",
    description:
        "Typhlosion is a Pokémon with a bulky, yet long and agile body. It is classified as a quadruped, but it is capable of bipedal movement. Most of its body is cream-colored, but its back and the top of its head are a dark green-blue. It has a short, rounded snout and small, triangular eyes and ears. When its mouth is open, its sharp canine teeth and thick tongue are visible. Each of its paws has three digits and there is a coarse, spiky fringe of fur along its rear. Across the back of its neck, there are several red spots that can produce fire. Typhlosion is capable of making anything go up in flames when angered and creating explosions by rubbing its fur together. The heat it generates when ready for battle creates a shimmering haze that can also be used to hide itself. Though it is rare in the wild, it can be found living on grasslands.",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    size: 1,
  ),
  Character(
    name: "Sceptile",
    imagePath:
        "https://drive.google.com/uc?export=view&id=11Kfv2FUb14uGmZrpEvGvEva4SsCSgWGO",
    description:
        "Agnes Gru it is one of Gru and Lucy's three adopted daughters, alongside her sisters Margo and Edith. She is the youngest child of the three sisters. She greatly adores unicorns, as shown on various occasions. Agnes is a little girl with dark brown eyes. Her long black hair is tied in an upwards ponytail with a red scrunchie. Most of the time, Agnes wears blue overalls over a yellow and brown striped t-shirt, and white sneakers with yellow socks. She also wears a white ballet outfit like Edith and Margo (at the ballet recital). For pajamas, Agnes wears a long blue nightshirt covered with teddy bears and polar bear slippers; her hair stays the same. On her birthday, Agnes is wearing a dress that resembles a princess riding a unicorn. The colors are similar to her regular outfit. She also wears a blue princess hat on her head.",
    colors: [Colors.green.shade200, Colors.green.shade900],
    size: 1,
  ),
  Character(
    name: "Gliscor",
    imagePath:
        "https://drive.google.com/uc?export=view&id=1PYbv2Fye7T5DXhMHd_NceyuoGW5MFdXA",
    description:
        "Gliscor is a large, mainly blue-purple vampire bat-like Pokémon. Its legs have two toes and a slightly darker circular coloration on the underside, and its tail has two barbs, giving its tail the resemblance of a vampire's fangs. Its arms are red with thin striations and are completely detached from its black wings, and each is ended with large pincers. Its ears have discernible, red, chambered ear insides, and its eyes are yellow. It has six visible fangs in its mouth, and its waist, like its arms, is red and striated. Gliscor's body resembles an open mouth, with the pointed protrusions coming from its upper torso resembling fangs, further illustrating its vampiric qualities. It appears to be partially covered in an insect-like exoskeleton. As shown in Riding the Winds of Change!, Gliscor, along with its unevolved form Gligar, can emit a sort of sound wave in order to detect obstacles and fly around them, similar to echolocation. Its legs appear to be not suitable for walking, so it can only perform short hops when on the ground. Gliscor hangs upside down while sleeping, much like other bat-like Pokémon, and it is nocturnal. It is capable of soundless flight; however, its wings cannot be flapped to the same extent that other Pokémon's wings can. Like Jumpluff and Wingull, Gliscor uses winds and updrafts to glide from place to place. When there is no wind, Gliscor climbs to the top of tall trees using its sharp raptorial claws and then glides from place to place. This practice is similar to flying squirrels. It is extremely rare, but sometimes it is found in thick pine forests and swamps.",
    colors: [Colors.blueGrey.shade200, Colors.blueGrey.shade900],
    size: 0.8,
  ),
];
