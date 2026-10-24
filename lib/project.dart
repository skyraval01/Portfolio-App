import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Myproject extends StatefulWidget {
  const new({super.key});

  // project details

  @override
  State<Myproject> createState() => _MyprojectState();
}

class _MyprojectState extends State<Myproject> {
  myProject(language, title, discription, star) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,

      // ------------------- Card ---------------
      child: Card(
        color: Color(0xff262626),
        child: Container(
          margin: EdgeInsets.only(right: 10, left: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(language, style: TextStyle(color: Colors.white)),

              SizedBox(height: 15),

              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3),
              Text(
                discription,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.star, color: Colors.white70, size: 18),
                  SizedBox(width: 4),

                  Text(star, style: TextStyle(color: Colors.white70)),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // ------------------- Card ---------------
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text("Projects", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myProject(
                'Flutter',
                'New Widget!',
                'This is new Update for fluter',
                '7',
              ),

              myProject(
                'Java',
                'Latest Code!',
                'This is new Update for Code',
                '5',
              ),
              myProject(
                'Android',
                'Awesome App!',
                'This is new Update for Code',
                '14',
              ),
              myProject(
                'Ui UX',
                'Good Design!',
                'This is new Update for Code',
                '10',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
