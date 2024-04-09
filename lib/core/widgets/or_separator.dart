import 'package:flutter/widgets.dart';

import 'custom_texts.dart';

class OrSeparator extends StatelessWidget {
  const OrSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:  MediaQuery.sizeOf(context).height*.05),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: .8,
              color: const Color.fromARGB(255, 172, 171, 171),
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child:  Text14Ar(text: 'or')
          ),
          Expanded(
            child: Container(
               height: .8,
              color: const Color.fromARGB(255, 172, 171, 171),
            )
          )
        ]
      ),
    );
  }
}