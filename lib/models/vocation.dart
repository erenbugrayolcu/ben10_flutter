import 'package:flutter/material.dart';

enum Vocation {
  wildmutt(
      title: "Vulpimancer",
      description:
          "A dog-human hybrid with no eyes that can sense things around it.",
      image: "wildmutt.png",
      planet: "Vulpin",
      ability:
          "Augmented sense, the spikes that he can throw, sharp tooth, sharp claws.",
      quote: "It’s ok. I’m here to get you down."),

  fourarms(
      title: "Tetramand",
      description: "A heavy muscled alien with four eyes and four arms.",
      image: "fourarms.png",
      planet: "Khoros",
      ability: "High muscle power, four arms, powered fists.",
      quote: "You should've seen the look on your face. Hah, priceless!"),

  greymatter(
      title: "Galvan",
      description: "A little humanoid frog that is really smart.",
      image: "greymatter.png",
      planet: "Galvan Prime",
      ability:
          "Intellect, big knowledge about everything, also Azmuth (Creator of Omnitrix) is a Galvan.",
      quote:
          "Honestly, I've never been very good at tests. Or quizzes for that matter!"),
  xlr8(
      title: "Kineceleran",
      description: "A fast humanoid alien with two balls under his foot.",
      image: "xlr8.png",
      planet: "Kinet",
      ability: "Fast, strong, has a mask.",
      quote: "Pretty fast, huh?"),
  upgrade(
      title: "Galvanic Mechamorph",
      description:
          "Can shape any technological tool, can throw laser with his eye.",
      image: "upgrade.png",
      planet: "Galvan B",
      ability: "Shape any tool, laser beam, upgrading technological tools.",
      quote: "Didn't your mom ever tell you it's not polite to spit?"),
  diamondhead(
      title: "Petrosapien",
      description:
          "Has a damage-proof crystal skin, can make any shape with crystals.",
      image: "diamondhead.png",
      planet: "Petropia",
      ability: "Crystal skin, crystal shield, crystal fists, crystal anything.",
      quote: "Too bad each one of those is only a tenth as powerful as mine."),
  ripjaws(
      title: "Piscciss Volann",
      description: "Fishy human that can't breathe so much in oxygen.",
      image: "ripjaws.png",
      planet: "Piscciss",
      ability: "Can swim underwater so fast.",
      quote: "Circus freak? I'm not a circus freak. I'm a superhero!"),
  stinkfly(
      title: "Lepidopterran",
      description:
          "Looks like a giant mosquito but can throw glue with his eyes and has a sharp tail.",
      image: "stinkfly.png",
      planet: "Lepidopterra",
      ability: "Fly, can throw glue with his eyes, smelling bad.",
      quote:
          "Oh man! I mean...uh, yeah! Stinkfly's gonna bring down the pain from above!"),
  ghostfreak(
      title: "Ectonurite",
      description:
          "Can go through the objects and people, can move his eye anywhere his body.",
      image: "ghostfreak.png",
      planet: "Anur Phaetos",
      ability: "Can possess bodies, telekinesis, levitation.",
      quote: "You wanna see something really scary?"),
  heatblast(
      title: "Pyronite",
      description: "A torch, can burn and melt anywhere and anything he wants.",
      image: "heatblast.png",
      planet: "Pyros",
      ability: "Fire, flame, fly, strength.",
      quote: "Check it out...I'm totally hot! Heh heh heh");

  const Vocation(
      {required this.title,
      required this.description,
      required this.image,
      required this.planet,
      required this.ability,
      required this.quote});

  final String title;
  final String description;
  final String image;
  final String planet;
  final String ability;
  final String quote;
}
