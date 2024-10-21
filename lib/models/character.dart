import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {
  //constructor
  Character(
      {required this.name,
      required this.vocation,
      required this.id,
      required this.quote});

  //finals
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String id;
  final String quote;
  bool _isFav = false;

  //getters
  get isFav => _isFav;

  //methods

  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

//dummy character data

List<Character> characters = [
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
      quote: "Too bad each one of those is only a tenth as powerful as mine."),
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
