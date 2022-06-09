import 'package:flutter/material.dart';

void main() =>
  runApp(const MaterialApp(
    home: CardId(),
  ));

class CardId extends StatefulWidget {
  const CardId({Key? key}) : super(key: key);

  @override
  State<CardId> createState() => CardIdState();
}

class CardIdState extends State<CardId> {
  int yearOfService = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Card ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              yearOfService += 1;
            });
          },
      child: const Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Center(
               child: CircleAvatar(
                 backgroundImage: AssetImage('assets/dev_pics1.jpg'),
                 radius: 40.0,
               ),
             ),
          const Divider(
            height: 60.0,
            //color: Colors.grey[800],
          ),
            const Text('NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20.0,
              )
            ),
          const SizedBox(height: 10.0),
             const Text('Emmanuel Wave',
                 style: TextStyle(
                   color: Colors.amberAccent,
                   letterSpacing: 2.0,
                   fontSize: 28.0,
                   fontWeight: FontWeight.bold
                 )
             ),
          const SizedBox(height:30.0),
             const Text('YEARS OF SERVICE',
                 style: TextStyle(
                   color: Colors.grey,
                   letterSpacing: 2.0,
                   fontSize: 20.0,
                 )
             ),
             const SizedBox(height: 10.0),
             Text('$yearOfService',
                 style: const TextStyle(
                     color: Colors.amberAccent,
                     letterSpacing: 2.0,
                     fontSize: 28.0,
                     fontWeight: FontWeight.bold
                 )
             ),
             const SizedBox(height:30.0),
             const Text('POSITION',
                 style: TextStyle(
                   color: Colors.grey,
                   letterSpacing: 2.0,
                   fontSize: 20.0,
                 )
             ),
             const SizedBox(height: 10.0),
             const Text('CEO',
                 style: TextStyle(
                     color: Colors.amberAccent,
                     letterSpacing: 2.0,
                     fontSize: 28.0,
                     fontWeight: FontWeight.bold
                 )
             ),
             const SizedBox(height:30.0),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
          const SizedBox(width: 10.0),
              Text(
                'emmaWave.com',
                style: TextStyle(
                  color: Colors.amberAccent[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          )
        ],
      ),
      ),

    );
  }
}


