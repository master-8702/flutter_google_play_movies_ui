import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 30, left: 10),
      child: Column(
        children: [
          Row(
            children: const [
              CircleAvatar(
                child: Icon(Icons.person),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Abe Kebe",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
              Expanded(
                child: Align(
                  child: Icon(Icons.more_vert),
                  alignment: Alignment.centerRight,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "★ ",
                    style: TextStyle(color: Colors.pink, fontSize: 20),
                  ),
                  Text(
                    "★ ★ ★ ★  ",
                    style: TextStyle(color: Colors.grey[400], fontSize: 20),
                  ),
                  Text(
                    "November 18, 2019",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                  "Half the shots were greenscreen The Rock and Jason weren't even in the room together, "
                  "they had no chemistry, their bickering was mostly garbage. Ryan Reynolds sucks "
                  "#boycott Ryan Reynolds. Kevin Hart was pointless in the film. I guess they think if "
                  "they spends enough \$\$ on random funny guys it would make their movie good. Yeah there"
                  "were some cool driving scenes, but all of the talking parts were annoying. Probably the"
                  "worst movie in the franchise."),
              SizedBox(
                height: 30,
              ),
              const Text("237 people found this review helpful"),
              SizedBox(
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
                      side: BorderSide(width: 2, color: Colors.grey),
                    ),
                    onPressed: () {},
                    child: Text('Yes'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: BorderSide(width: 2, color: Colors.grey),
                    ),
                    onPressed: () {},
                    child: Text('No'),
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
