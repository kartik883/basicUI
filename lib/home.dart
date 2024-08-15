import 'package:flutter/material.dart';
class home extends StatefulWidget {

  static String id = 'home';
  const home({super.key});

  @override
  State<home> createState() => _MyAppState();
}

class _MyAppState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,

        child: Scaffold(
      appBar: AppBar(
        actions:[
          Icon(Icons.search),
          SizedBox(width: 10),
          PopupMenuButton(icon: Icon(Icons.more_horiz),
          itemBuilder: (context)=>[
            PopupMenuItem(
                value:'1',
                child: Text('group'),),
            PopupMenuItem(
              value:'2',
              child: Text('setting'),),
            PopupMenuItem(
              value:'3',
              child: Text('logout'),),
            ],
          ),
          SizedBox(width: 10),

        ],

        backgroundColor: Colors.teal,
        title: Text('watsapp',
          style: TextStyle(color: Colors.white),
        ),


        bottom: const TabBar(
          tabs: [
            Tab(
                child: Icon(Icons.camera_alt,color: Colors.white,)),

            Tab(child: Text('chats',style: TextStyle(color: Colors.white),)),

            Tab(child: Text('status',style: TextStyle(color: Colors.white),)),

            Tab(child: Text('call',style: TextStyle(color: Colors.white),)),

          ],
        ),
      ),
          body:  TabBarView(
            children: [
             Text('camera'),
              ListView.builder(
                itemCount: 29,
                  itemBuilder: (context,index){
                    return  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                      title: Text('kartik love'),
                      subtitle: Text('i love you kartik'),
                      trailing: Text('6.20 pm'),
                    );
                  }

              ),
              Text('status'),


              ListView.builder(
                  itemCount: 29,
                  itemBuilder: (context,index){
                    return  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                      title: Text('kartik love'),
                      subtitle: Text('today 4pm'),
                      trailing: Icon(index/2==0?Icons.call:Icons.video_call),
                    );
                  }

              ),
            ],
          ),

    )
    );
  }
}
