import 'package:flutter/material.dart';
class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:Colors.white,
      body: Container(
                child:Container(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      maxRadius: 65,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJFClLy5wm4BRSsYjf_ZaGmuI6dYzNHbaW_g&usqp=CAU"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Akshay Chauhan",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                    )
                  ],
                ),
                
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Wool farmer",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),const SizedBox(
                  height: 15,
                ),
                Container(
                  child: Expanded(
                      child: ListView(
                    children: [
                      Card(
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.favorite,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Favorites',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: Colors.white70,
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.history,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Purchase History',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: Colors.white70,
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading:
                              Icon(Icons.subscriptions, color: Colors.black54),
                          title: Text(
                            'Subscription',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: Colors.white70,
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.privacy_tip_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.privacy_tip_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Privacy',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: Colors.white70,
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Logout',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
      ),
    );
  }
}