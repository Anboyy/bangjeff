import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFE54649), Color(0xFF1E1E1E)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          elevation: 2,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: CircleAvatar(
                                    radius: MediaQuery.of(context).size.width *
                                        0.09,
                                    backgroundColor: Colors.brown,
                                    child: const Text("YD"),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Text(
                                              "Edit ",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text("data"),
                                      const Text("data"),
                                      const Text("data"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Card(
                                  elevation: 2,
                                  child: ListTile(
                                    leading: const Icon(Icons.warning),
                                    title: const Text("Hubungi Kami"),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward_ios),
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 2,
                                  child: ListTile(
                                    leading: const Icon(Icons.lock_rounded),
                                    title: const Text("Kebijakan Privasi"),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward_ios),
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 2,
                                  child: ListTile(
                                    leading: const Icon(Icons.settings),
                                    title: const Text("Ketentuan Layanan"),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward_ios),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.brown.shade400,
                                        Color(0xFF1E1E1E),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Card(
                                  elevation: 3,
                                  child: Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
