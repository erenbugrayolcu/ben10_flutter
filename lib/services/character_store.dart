import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';

class CharacterStore extends ChangeNotifier {
  final List<Character> _characters = [
    Character(
        name: 'Wildmutt',
        vocation: Vocation.wildmutt,
        id: '1',
        quote: "It’s ok. I’m here to get you down."),
    Character(
        name: 'Fourarms',
        vocation: Vocation.fourarms,
        id: '2',
        quote: "You should've seen the look on your face. Hah, priceless!"),
    Character(
        name: 'Grey Matter',
        vocation: Vocation.greymatter,
        id: '3',
        quote:
            "Honestly, I've never been very good at tests. Or quizzes for that matter!"),
    Character(
        name: 'XLR8',
        vocation: Vocation.xlr8,
        id: '4',
        quote: "Pretty fast, huh?"),
    Character(
        name: 'Upgrade',
        vocation: Vocation.upgrade,
        id: '5',
        quote: "Didn't your mom ever tell you it's not polite to spit?"),
    Character(
        name: 'Diamondhead',
        vocation: Vocation.diamondhead,
        id: '6',
        quote:
            "Too bad each one of those is only a tenth as powerful as mine."),
    Character(
        name: 'Ripjaws',
        vocation: Vocation.ripjaws,
        id: '7',
        quote: "Circus freak? I'm not a circus freak. I'm a superhero!"),
    Character(
        name: 'Stinkfly',
        vocation: Vocation.stinkfly,
        id: '8',
        quote:
            "Oh man! I mean...uh, yeah! Stinkfly's gonna bring down the pain from above!"),
    Character(
        name: 'Ghostfreak',
        vocation: Vocation.ghostfreak,
        id: '9',
        quote: "You wanna see something really scary?"),
    Character(
        name: 'Heatblast',
        vocation: Vocation.heatblast,
        id: '10',
        quote: "Check it out...I'm totally hot! Heh heh heh."),
  ];

  get characters => _characters;

  void addCharacter(Character character) {
    _characters.add(character);
    notifyListeners();
  }
}
