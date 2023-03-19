import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade700,
            title: Text('Typo',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
            actions:[
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 20,),
              Icon(Icons.search_rounded),
              SizedBox(width: 10,),
              PopupMenuButton(itemBuilder: (context) => [
                PopupMenuItem(value: 1,child: Text('New Group')),
                PopupMenuItem(value: 2,child: Text('Starred Message')),
                PopupMenuItem(value: 3,child: InkWell(
                  onTap: (){

                  },
                    child: Text('Settings'))),
                PopupMenuItem(value: 4,child: Text('Logout')),
              ],),
              SizedBox(width: 10,),
            ],
            bottom: TabBar(tabs: [
              Icon(Icons.groups_rounded,size: 30),
              Text('Chats',style: TextStyle(fontSize: 18),),
              Text('Status',style: TextStyle(fontSize: 18),),
              Text('Calls',style: TextStyle(fontSize: 18),),
            ]),
          ),
          body: TabBarView(
              children: [
                ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/code.png'),
                      ),
                      title: Text('Community 1',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.groups_rounded)
                    );

                },itemCount: 20,),
                ListView.builder(itemBuilder: (context, index) {
                  return
                    ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/code.png'),
                    ),
                    title: Text('Name ..',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w900),),
                    subtitle: Text('Welcome To Whatsapp',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
                    trailing: Text('5:30 pm',style: TextStyle(fontWeight: FontWeight.w900),),
                  );

                },itemCount: 20,),
                ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green,width: 5)
                          ),
                          child: CircleAvatar(
                            backgroundImage:AssetImage ('assets/images/code2.png'),),
                        ),
                        title: Text('Status ---',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        subtitle: Text('16 min ago',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  );
                },itemCount: 20,),
                ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/pic.png')
                    ),
                    title: Text('ABC',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    subtitle: Text(index/2==6?'16 min ago':'54 mins ago',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    trailing: Icon(index*2==6?Icons.phone_callback_rounded:Icons.call_missed),
                  );


                },itemCount: 20,)
              ],
            ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.message_rounded,
            ),
            backgroundColor: Colors.green.shade700,
          )
      )
    );
  }
}
