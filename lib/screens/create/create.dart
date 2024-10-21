import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_cart.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/services/character_store.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateState();
}

class _CreateState extends State<CreateScreen> {
  final _nameController = TextEditingController();
  final _planetController = TextEditingController();
  final _quoteController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _planetController.dispose();
    super.dispose();
  }

  //handling vocation section
  Vocation selectedVocation = Vocation.wildmutt;

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  //submit handler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      //show error dialog

      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading('Missing alien name.'),
              content: const StyledText("Alien cannot be nameless."),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const StyledHeading('Close'))
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          });

      return;
    }

    if (_planetController.text.trim().isEmpty) {
      //show error dialog

      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading('Missing alien planet.'),
              content: const StyledText(
                  "Aliens should come from some place, right?"),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const StyledHeading('Close'))
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          });

      return;
    }

    if (_quoteController.text.trim().isEmpty) {
      //show error dialog

      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading("Missing alien quote."),
              content: const StyledText("Didn't your alien said anything?"),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const StyledHeading('Close'))
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          });

      return;
    }

    Provider.of<CharacterStore>(context, listen: false).addCharacter(Character(
      name: _nameController.text.trim(),
      quote: _quoteController.text.trim(),
      vocation: selectedVocation,
      id: uuid.v4(),
    ));

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => const Home(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Alien Creation'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //welcome message
              Center(
                child: Icon(Icons.code, color: AppColors.primaryColor),
              ),
              const Center(
                child: StyledHeading('Welcome, new Plumber.'),
              ),
              const Center(
                child: StyledText('Create a name and planet for your alien.'),
              ),
              const SizedBox(height: 30),

              //input for name and planet
              TextField(
                controller: _nameController,
                style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.sentiment_very_dissatisfied_outlined),
                    label: StyledText('Alien name')),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _planetController,
                style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.public),
                    label: StyledText('Planet name')),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _quoteController,
                style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.format_quote),
                    label: StyledText('Enter a quote')),
              ),
              const SizedBox(height: 30),

              //select vocation title
              Center(
                child: Icon(Icons.code, color: AppColors.primaryColor),
              ),
              const Center(
                child: StyledHeading('Choose a species.'),
              ),
              const Center(
                child: StyledText('This determins your avaliable skills.'),
              ),
              const SizedBox(height: 30),

              //vocation cards
              VocationCard(
                selected: selectedVocation == Vocation.wildmutt,
                onTap: updateVocation,
                vocation: Vocation.wildmutt,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.fourarms,
                onTap: updateVocation,
                vocation: Vocation.fourarms,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.greymatter,
                onTap: updateVocation,
                vocation: Vocation.greymatter,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.xlr8,
                onTap: updateVocation,
                vocation: Vocation.xlr8,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.upgrade,
                onTap: updateVocation,
                vocation: Vocation.upgrade,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.diamondhead,
                onTap: updateVocation,
                vocation: Vocation.diamondhead,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.ripjaws,
                onTap: updateVocation,
                vocation: Vocation.ripjaws,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.stinkfly,
                onTap: updateVocation,
                vocation: Vocation.stinkfly,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.ghostfreak,
                onTap: updateVocation,
                vocation: Vocation.ghostfreak,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.heatblast,
                onTap: updateVocation,
                vocation: Vocation.heatblast,
              ),

              //good luck message
              Center(
                child: Icon(Icons.code, color: AppColors.primaryColor),
              ),
              const Center(
                child: StyledHeading('Good luck!'),
              ),
              const Center(
                child: StyledText('And enjoy the journey...'),
              ),
              const SizedBox(height: 30),

              Center(
                child: StyledButton(
                    onPressed: handleSubmit,
                    child: const StyledHeading('Create Alien')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
