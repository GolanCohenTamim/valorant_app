import 'package:flutter/material.dart';
import 'agent.details.dart';

/*class AgentCard extends StatelessWidget {
  final String title;
  final String role;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/

class AgentCard extends StatelessWidget {
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

  const AgentCard({
    Key? key,
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
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AgentDetail(
            title: title,
            role: role,
            roleIcon: roleIcon,
            thumbnailUrl: thumbnailUrl,
            abilityIcon1: abilityIcon1,
            abilityIcon2: abilityIcon2,
            abilityIcon3: abilityIcon3,
            abilityIcon4: abilityIcon4,
            abilityVideo1: abilityVideo1,
            abilityVideo2: abilityVideo2,
            abilityVideo3: abilityVideo3,
            abilityVideo4: abilityVideo4,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: const Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
            image: NetworkImage(thumbnailUrl),
            fit: BoxFit.contain,
          ),
        ),
        child: Stack(
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, top: 10.0, right: 200, bottom: 15),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        SizedBox(width: 7),
                        Container(
                            width: 15,
                            height: 15,
                            child: Image.network(roleIcon)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.stream,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        SizedBox(width: 7),
                        Text(
                          role,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              alignment: Alignment.bottomLeft,
            ),
          ],
        ),
      ),
    );
  }
}
