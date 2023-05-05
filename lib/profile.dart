import 'package:flutter/material.dart';






class TopPortion extends StatelessWidget {
  const TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView( children:[
    Scaffold(
      body: 
       SafeArea(child: Column(
      
        children: [
        Row(children: [
         
        Container(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: 150,
            height:150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/mich.JPG')),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 60, 0), shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
        child: Column(children: const [
          Text("Cherifa Moumouni", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, )),
          Text("Bus 375", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Colors.grey))
        ],),
         
        )

    ],

    ),
    Container(
      child: ListView.separated(itemCount: 7,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: const Text('Age'),
            tileColor: Colors.grey,
            onTap: () {},

          );
        },
        separatorBuilder: (BuildContext context, int index)=> const Divider(),
        ),
    )
    ],
    ),
    
    ),
    )]
    );
    
  }
}


