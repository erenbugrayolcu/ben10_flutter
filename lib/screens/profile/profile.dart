import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/screens/profile/stats_table.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/themes.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle(character.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: AppColors.secondaryColor.withOpacity(0.3),
              child: Row(
                children: [
                  (Image.asset(
                    'assets/img/aliens/classic/${character.vocation.image}',
                    width: 140,
                    height: 140,
                  )),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledHeading(character.vocation.title),
                        StyledText(character.vocation.description),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //ability, quote
            const SizedBox(height: 20),
            Center(
              child: Icon(Icons.code, color: AppColors.primaryColor),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: AppColors.secondaryColor.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const StyledHeading('Abilities'),
                    StyledText(character.vocation.ability),
                    const SizedBox(height: 10),
                    const StyledHeading('Quote'),
                    StyledText(character.quote),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),

            //stats
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  StatsTable(character),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}