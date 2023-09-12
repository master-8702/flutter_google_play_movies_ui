import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';

class MovieReview extends StatelessWidget {
  const MovieReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 30, left: 10),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                child: Icon(Icons.person),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Abe Kebe",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                    ),
                    onPressed: () async {
                      await showNotImplementedAlertDialog(context);
                    },
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "★ ",
                    style: TextStyle(color: Colors.pink, fontSize: 20),
                  ),
                  Text(
                    "★ ★ ★ ★  ",
                    style: TextStyle(color: Colors.grey[400], fontSize: 20),
                  ),
                  const Text(
                    "November 18, 2019",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "Half the shots were greenscreen The Rock and Jason weren't even in the room together, "
                  "they had no chemistry, their bickering was mostly garbage. Ryan Reynolds sucks "
                  "#boycott Ryan Reynolds. Kevin Hart was pointless in the film. I guess they think if "
                  "they spends enough \$\$ on random funny guys it would make their movie good. Yeah there"
                  "were some cool driving scenes, but all of the talking parts were annoying. Probably the"
                  "worst movie in the franchise."),
              const SizedBox(
                height: 30,
              ),
              const Text("237 people found this review helpful"),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Did you find this helpful?"),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: const BorderSide(width: 2, color: Colors.grey),
                    ),
                    onPressed: () async {
                      await showNotImplementedAlertDialog(context);
                    },
                    child: const Text('Yes'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: const BorderSide(width: 2, color: Colors.grey),
                    ),
                    onPressed: () async {
                      await showNotImplementedAlertDialog(context);
                    },
                    child: const Text('No'),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
