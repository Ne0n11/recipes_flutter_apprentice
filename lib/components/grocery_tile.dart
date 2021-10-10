import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
<<<<<<< HEAD

import '../models/grocery_item.dart';

class GroceryTile extends StatelessWidget {
  final GroceryItem item;
  final Function(bool?)? onComplete;
  final TextDecoration textDecoration;

=======
import '../models/grocery_item.dart';

class GroceryTile extends StatelessWidget {
  // 1
  final GroceryItem item;
  // 2
  final Function(bool?)? onComplete;
  // 3
  final TextDecoration textDecoration;
  // 4
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
  GroceryTile({
    Key? key,
    required this.item,
    this.onComplete,
<<<<<<< HEAD
  })  : textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
=======
  }) : textDecoration =
  item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
<<<<<<< HEAD
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 5.0,
                color: item.color,
              ),
              const SizedBox(width: 16.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: GoogleFonts.lato(
                      decoration: textDecoration,
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  buildDate(),
                  const SizedBox(height: 4.0),
                  buildImportance(),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                item.quantity.toString(),
                style: GoogleFonts.lato(
                  decoration: textDecoration,
                  fontSize: 21,
                ),
              ),
              buildCheckbox()
=======
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 2
          Container(width: 5.0, color: item.color),
          // 3
          const SizedBox(width: 16.0),
          // 4
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 5
              Text(
                item.name,
                style: GoogleFonts.lato(
                    decoration: textDecoration,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4.0),
              buildDate(),
              const SizedBox(height: 4.0),
              buildImportance(),
            ],
          ),
          // 6
          Row(
            children: [
              // 7
              Text(item.quantity.toString(),
                style:
                GoogleFonts.lato(
                    decoration: textDecoration,
                    fontSize: 21.0),
              ),
              // 8
              buildCheckbox(),
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
            ],
          ),
        ],
      ),
    );
  }

  Widget buildImportance() {
    if (item.importance == Importance.low) {
      return Text(
<<<<<<< HEAD
        'Low',
        style: GoogleFonts.lato(decoration: textDecoration),
      );
    } else if (item.importance == Importance.medium) {
      return Text(
        'Medium',
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w800, decoration: textDecoration),
      );
=======
          'Low',
          style: GoogleFonts.lato(decoration: textDecoration));
    } else if (item.importance == Importance.medium) {
      return Text(
          'Medium',
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w800,
              decoration: textDecoration));
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
    } else if (item.importance == Importance.high) {
      return Text(
        'High',
        style: GoogleFonts.lato(
          color: Colors.red,
          fontWeight: FontWeight.w900,
          decoration: textDecoration,
        ),
      );
    } else {
      throw Exception('This importance type does not exist');
    }
  }

  Widget buildDate() {
    final dateFormatter = DateFormat('MMMM dd h:mm a');
    final dateString = dateFormatter.format(item.date);
    return Text(
      dateString,
      style: TextStyle(decoration: textDecoration),
    );
  }

  Widget buildCheckbox() {
    return Checkbox(
<<<<<<< HEAD
      value: item.isComplete,
      onChanged: onComplete,
    );
  }
=======
      // 1
      value: item.isComplete,
      // 2
      onChanged: onComplete,
    );
  }

>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
}
