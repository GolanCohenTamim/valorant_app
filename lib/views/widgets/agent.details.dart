import 'package:flutter/material.dart';
import 'package:valoran_app/views/widgets/video.screen.dart';

class AgentDetail extends StatelessWidget {
  final String title;
  final String roleIcon;
  final String role;
  final String thumbnailUrl;
  final String abilityIcon1;
  final String abilityIcon2;
  final String abilityIcon3;
  final String abilityIcon4;
  final String abilityVideo1;
  final String abilityVideo2;
  final String abilityVideo3;
  final String abilityVideo4;
  final String videoLink = '';

  AgentDetail({
    required this.title,
    required this.role,
    required this.roleIcon,
    required this.thumbnailUrl,
    required this.abilityIcon1,
    required this.abilityIcon2,
    required this.abilityIcon3,
    required this.abilityIcon4,
    required this.abilityVideo1,
    required this.abilityVideo2,
    required this.abilityVideo3,
    required this.abilityVideo4,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                  left: 10.0, top: 30.0, right: 10.0, bottom: 15.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(thumbnailUrl),
                fit: BoxFit.contain,
              )),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              margin: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => buildSheet(abilityVideo1),
                        );
                        // ignore: avoid_print
                        print('ability1 pressed');
                      },
                    ),
                    radius: 30.0,
                    backgroundImage: NetworkImage(abilityIcon1),
                    backgroundColor: Colors.transparent,
                  ),
                  CircleAvatar(
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => buildSheet(abilityVideo2),
                        );
                        // ignore: avoid_print
                        print('ability2 pressed');
                      },
                    ),
                    radius: 30.0,
                    backgroundImage: NetworkImage(abilityIcon2),
                    backgroundColor: Colors.transparent,
                  ),
                  CircleAvatar(
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => buildSheet(abilityVideo3),
                        );
                        // ignore: avoid_print
                        print('ability3 pressed');
                      },
                    ),
                    radius: 30.0,
                    backgroundImage: NetworkImage(abilityIcon3),
                    backgroundColor: Colors.transparent,
                  ),
                  CircleAvatar(
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => buildSheet(abilityVideo4),
                        );
                        // ignore: avoid_print
                        print('ability4 pressed');
                      },
                    ),
                    radius: 30.0,
                    backgroundImage: NetworkImage(abilityIcon4),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSheet(videoLink) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.red,
            width: 380.0,
            height: 200.0,
            child: VideoPlayerScreen(
              video: videoLink,
            ),
          ),
        ],
      );
}

