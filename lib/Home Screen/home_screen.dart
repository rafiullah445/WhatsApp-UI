import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Whatsapp"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,),
       PopupMenuButton(
           icon: Icon(Icons.more_vert),
           itemBuilder: (context)=>
       [
         PopupMenuItem(child: Text('New Group')),
         PopupMenuItem(child: Text("Setting")),
         PopupMenuItem(child: Text("Logout")),
       ]
       ),
          SizedBox(width: 10,),
        ],
        bottom: const TabBar(tabs:
        [
           Tab(
               child:Icon(Icons.camera_alt)
           ),
          Tab(
              child:Text("Chats")
          ),
          Tab(
              child:Text("Status")
          ),Tab(
            child: Text("Call"),
        ),



        ]
        ),
      ),
      body:  TabBarView(
        children: [
          Text("hello"),
         ListView.builder(
             itemCount: 50,
             itemBuilder: (context,index)
            {
              return ListTile(
                leading: CircleAvatar(
                  // child: Image.asset('assets/images/logo.jpg'),
                  backgroundImage: AssetImage('assets/images/gym.jpg'),
                  
                  // child: CircleAvatar(
                  //   child: Image.asset('assets/images/logo.png'),
                  // ),
                ),
                title: Text("Rafi"),
                subtitle: Text("Where is My laptop"),
                trailing: Text('2:00 PM'),
              );
               
            }
         ),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context,index)
              {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 3,
                      ),
                    ),
                    child: CircleAvatar(

                      backgroundImage: AssetImage('assets/images/gym.jpg'),

                    ),
                  ),
                  title: Text("Rafi"),
                  subtitle: Text("35M ago"),

                );

              }
          ),

          ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index)
          {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/gym.jpg'),
              ),
              title: Text("Rafi"),
              subtitle: Text(index/2==0?'you missed audio call': 'you missed video call'),
              trailing: (index/2==0? Icon(Icons.phone):Icon(Icons.video_call)),
            );
          }
          )
        ],
      )
    ));
  }
}
