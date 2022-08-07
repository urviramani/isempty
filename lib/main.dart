import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: first(),
  ));
}

class first extends StatefulWidget {
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
    TextEditingController t1=TextEditingController();

    TextEditingController t2=TextEditingController();
      int n1=0,n2=0,sum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green,
        centerTitle:true,
      ),
      body: Column(
        children: [
          TextField(controller: t1,),
          TextField(controller: t2,),
          ElevatedButton(onPressed: () {
            String a=t1.text;
            String b=t2.text;

            if(a.isEmpty)
              {
                  int n1=0;
              }
            else
              {
                  int n1 = int.parse(a);
              }
            int n1 = int.parse(a);
            int n2 = int.parse(b);


            setState(() {
               sum = n1+n2;
            });

                print(sum);
          }, child: Text("finish"))
        ],
      ),
    );
  }
}
