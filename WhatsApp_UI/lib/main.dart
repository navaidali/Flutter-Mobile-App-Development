import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("WhatsApp"),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Text("CHAT"),
                  ),
                  Tab(
                    child: Text("STATUS"),
                  ),
                  Tab(
                    child: Text("CALL"),
                  ),
                ],
              ),
              actions: [
                const SizedBox(
                  width: 10,
                ),
                Icon(Icons.search),
                PopupMenuButton(
                    icon: Icon(Icons.more_vert_outlined),
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: "1",
                            child: Text("New Group"),
                          ),
                          const PopupMenuItem(
                            value: "2",
                            child: Text("New Broadcast"),
                          ),
                          const PopupMenuItem(
                            value: "3",
                            child: Text("Linked Devices"),
                          ),
                          const PopupMenuItem(
                            value: "4",
                            child: Text("Starred Messages"),
                          ),
                          const PopupMenuItem(
                            value: "5",
                            child: Text("Settings"),
                          ),
                        ]),
              ],
            ),
            body: TabBarView(children: [
              Text("camera"),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1546490784366690306/jGEyJYcl_400x400.jpg'),
                    ),
                    title: Text(
                      "Navaid Ali",
                      style: TextStyle(fontSize: 16),
                    ),
                    subtitle: Text("Hello There, I'm a flutter Developer"),
                    trailing: Text("1:30 AM"),
                  );
                },
              ),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://pbs.twimg.com/profile_images/1546490784366690306/jGEyJYcl_400x400.jpg'),
                      ),
                    ),
                    title: const Text(
                      "Navaid Ali",
                      style: TextStyle(fontSize: 16),
                    ),
                    subtitle: const Text("10 minutes ago."),
                  );
                },
              ),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1546490784366690306/jGEyJYcl_400x400.jpg'),
                    ),
                    title: const Text(
                      "Navaid Ali",
                      style: TextStyle(fontSize: 16),
                    ),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.call_received,
                          color: Colors.green,
                        ),
                        Text("Today, 2:00 pm"),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.video_call,
                      color: Colors.green,
                    ),
                  );
                },
              ),
            ]),
          ),
        ));
  }
}
