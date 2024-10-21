import 'package:flutter_rpg/models/vocation.dart';

class Skill {
  final String id;
  final String name;
  final Vocation vocation;

  Skill({required this.id, required this.name, required this.vocation});
}

final List<Skill> allSkills = [
  //wildmutt skills
  Skill(id: '1', name: 'Sense', vocation: Vocation.wildmutt),
  Skill(id: '2', name: 'Claw Attack', vocation: Vocation.wildmutt),
  Skill(id: '3', name: 'Bite', vocation: Vocation.wildmutt),
  Skill(id: '4', name: 'Spikes', vocation: Vocation.wildmutt),
];
