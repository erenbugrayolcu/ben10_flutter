import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/themes.dart';

class StatsTable extends StatefulWidget {
  const StatsTable(this.character, {super.key});

  final Character character;

  @override
  State<StatsTable> createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          //available points
          Container(
            color: AppColors.secondaryColor,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color:
                      widget.character.points > 0 ? Colors.yellow : Colors.grey,
                ),
                const SizedBox(
                  width: 20,
                ),
                const StyledText('Available stat points: '),
                const Expanded(child: SizedBox(width: 20)),
                StyledHeading(widget.character.points.toString()),
              ],
            ),
          ),

          //stats table
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: widget.character.statsAsFormattedList.map((stat) {
              return TableRow(
                  decoration: BoxDecoration(
                      color: AppColors.secondaryColor.withOpacity(0.5)),
                  children: [
                    TableCell(
                      child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: StyledHeading(stat['title']!)),
                    ),

                    //stat value
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: StyledHeading(stat['value']!)),
                    ),

                    //icon to decrease stats
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: IconButton(
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: AppColors.textColor),
                          onPressed: () {
                            setState(() {
                              widget.character.decreaseStat(stat['title']!);
                            });
                          },
                        )),

                    //icon to increase stats
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: IconButton(
                          icon: Icon(Icons.keyboard_arrow_up,
                              color: AppColors.textColor),
                          onPressed: () {
                            setState(() {
                              widget.character.increaseStat(stat['title']!);
                            });
                          },
                        )),
                  ]);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
