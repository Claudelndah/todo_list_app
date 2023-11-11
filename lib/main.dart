import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_list_app/about_page.dart';
import 'package:todo_list_app/create_task.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyHomePage(title: "Mon Dashboard",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = new GlobalKey<FormState>();
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController surnameController = new TextEditingController();
  final TextEditingController professionController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 6.0,
          backgroundColor: Colors.blue,
          title: Text("Dashboard",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20 ,
              fontWeight: FontWeight.bold,

            ),

          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                  child: Text(
                      "Actions",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  )
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Ajouter une tâche"),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  const Task())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("Voir tâches en cours"),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Home())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text("Voir tâches Terminées"),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Home())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("A propos"),
                onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  AboutPage())
                );
                },
              )
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            children: [
                    Container(
                      height: 20,
                      child: Card(
                          elevation: 10.0,
                          color: Colors.white,
                          child:  InkWell(
                            onTap: (()=>print("Cliqué")),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.punch_clock),
                                    title: Text("6"),
                                    subtitle: Text("En cours"),
                                  )
                                ],
                              ),
                            ),
                          )

                      ),
                    ),
                    Container(
                      height: 20,
                      child: Card(
                          elevation: 10.0,
                          color: Colors.white,
                          child:  InkWell(
                            onTap: (()=>print("Cliqué")),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.check),
                                    title: Text("10"),
                                    subtitle: Text("Terminées"),
                                  )
                                ],
                              ),
                            ),
                          )

                      ),
                    ),
                    Container(
                      height: 20,
                      child: Card(
                          elevation: 10.0,
                          color: Colors.white,
                          child:  InkWell(
                            onTap: (()=>print("Cliqué")),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.all_inbox),
                                    title: Text("23"),
                                    subtitle: Text("Tous"),
                                  )
                                ],
                              ),
                            ),
                          )

                      ),
                    ),
                    Container(
                      height: 20,
                      child: Card(
                          elevation: 10.0,
                          color: Colors.white,
                          child:  InkWell(
                            onTap: (()=>print("Cliqué")),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.calendar_month),
                                    title: Text("7"),
                                    subtitle: Text("A venir"),
                                  )
                                ],
                              ),
                            ),
                          )

                      ),
                    ),
              ]
          ),

          /*void versPageEnCours(){
            Navigator.push(context, MaterialPageRoute(builder: context){
              return PageEnCours('Voir les events à venir');
    })
    }*/
          /*void versPageTerminees(){
            Navigator.push(context, MaterialPageRoute(builder: context){
              return PageTerminees('Voir les events terminés');
    })
    }*/
          /*void PageToutes(){
            Navigator.push(context, MaterialPageRoute(builder: context){
              return PageToutes('Voir les events terminés');
    })
    }*/
          /*void PageAVenir(){
            Navigator.push(context, MaterialPageRoute(builder: context){
              return PageAVenir('Voir les events à venir');
    })
    }*/
          /*child:

          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Card(
                elevation: 10.0,
                color: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("23"),
                        subtitle: Text("En cours"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),*/
        )

    );
  }
}











/*

 child:

        Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: surnameController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Quel est votre nom ? ',
                          labelText: "Nom",
                        ),
                        validator: (String? value){
                          return (value == null || value == "") ? "Ce champ est obligatoire" : null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: nameController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Quel est votre Prénom ? ',
                          labelText: "Prénom*",
                        ),
                        validator: (String? value){
                          return (value == null || value == "") ? "Ce champ est obligatoire" : null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: professionController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.work),
                          hintText: 'Quel est votre Profession ? ',
                          labelText: "Profeession*",
                        ),
                        validator: (String? value){
                          return (value == null || value == "") ? "Ce champ est obligatoire" : null;
                        },
                      ),
                    ],

                  )
              ),

              ElevatedButton(onPressed: () async{
                if(formKey.currentState!.validate()){
                  final  sharedPred = await SharedPreferences.getInstance();
                  sharedPred.setString('surname', surnameController.text);
                  sharedPred.setString('name', nameController.text);
                  sharedPred.setString('profession', professionController.text);
                  Fluttertoast.showToast(msg: "Les informations ont été récupérées avec succès",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                  ) ;
                }

              },

                  child: Text("Soumettre")
              ),
              ElevatedButton(
                  style: ButtonStyle(

                  ),
                  onPressed: ()

                  {
                    Navigator.push(context,
                      MaterialPageRoute(builder:(context) => SecondScreen()),
                    );
                  },
                  child: Text("Page suivante")
              ),

            ],
          ),
        ),
      ),
    );
  }

*/
