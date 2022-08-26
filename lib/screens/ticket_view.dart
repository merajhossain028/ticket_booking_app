import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/circle_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
                color: Colors.blueGrey[800],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Dhaka",
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    CircleContainer(),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  5,
                                  (index) => const Text(
                                        "-",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.rotate(
                      angle: 1.5,
                      child: const Icon(Icons.airplanemode_active,
                          color: Colors.white),
                    ),
                    CircleContainer(),
                    Expanded(child: Container()),
                    Text(
                      "CTG",
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
