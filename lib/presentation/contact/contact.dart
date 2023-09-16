// import 'package:flutter/material.dart';

// class FourthPageDecoration extends StatelessWidget {
//   const FourthPageDecoration({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 800,
//       child: Stack(
//         children: [
//           Center(
//             child: Text('Contact'),
//           ),
//           Positioned(
//             right: 0,
//             top: 0,
//             child: Image.asset('assets/images/yellow_light.png'),
//           ),
//         ],
//         // forth page
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'widgets/footer.dart';
import 'widgets/screen_decoration.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const LastPageDecoration(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end, children: [Footer()]),
    );
  }
}
