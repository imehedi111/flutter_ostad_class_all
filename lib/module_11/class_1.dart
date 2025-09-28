import 'package:flutter/material.dart';

class Module11Class1 extends StatelessWidget {
  const Module11Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My widget APP',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      // body: Column(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.greenAccent,),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     )
      //   ],
      // ),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone, color: Colors.green,),
      //       trailing: Icon(Icons.delete, color: Colors.red,),
      //       title: Text('Md Mehedi Hasan'),
      //       subtitle: Text('Flutter Developer'),
      //     ),
      //   ],
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: ListView.builder(
      //       itemCount: 20,
      //       itemBuilder: (context, index){
      //         return Card(
      //           shape: RoundedRectangleBorder(side: BorderSide(width: 1, color: Colors.teal), borderRadius: BorderRadius.circular(40)),
      //           margin: EdgeInsetsGeometry.all(5.0),
      //           color: Colors.green.shade100,
      //           child: ListTile(
      //             leading: Icon(Icons.phone, color: Colors.green,),
      //             trailing: Icon(Icons.delete, color: Colors.purpleAccent,),
      //             title: Text('Md Mehedi Hasan'),
      //             subtitle: Text('Flutter Developer'),
      //             isThreeLine: false,
      //             dense: true,
      //             onTap: (){
      //               print('Cards are Taped');
      //             },
      //           ),
      //         );
      //       }
      //
      //   ),
      // ),
      // body: ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //     itemCount: 10,
      //     itemBuilder: (context, index){
      //       return Container(
      //         width: 80,
      //         height: 80,
      //         color: Colors.green[100*((index%8)+1)],
      //         child: Text('Item = $index'),
      //       );
      //     }
      //
      // ),
      body: ListView.separated(

        itemCount: 15,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.remove_red_eye),
                title: Text('Mehedi Hasan'),
                subtitle: Text('Flutter Developer'),
              ),
            );
          },
          separatorBuilder: (context, index){
            return Divider(
              thickness: 2,
              color: Colors.orange,
              indent: 20.5,
              endIndent: 20.5,
              height: 15,
            );
          },

      ),
    );
  }
}
