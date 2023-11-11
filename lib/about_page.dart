import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A propos"),
          centerTitle: true,
          backgroundColor: Colors.blue,
      ),
      body:
      Center(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 20), // Ajouter 20 pixels d'espace en bas
            ),
            Text(
              'Bienvenue dans notre application de gestion de tâches ! '
                  'Découvrez comment nous simplifions la gestion quotidienne '
                  'de vos tâches personnelles et professionnelles.'

                    'Voici ci-dessous les membres de notre équipe :',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20), // Ajouter 20 pixels d'espace en bas
            ),
            Card(

              child: ListTile(
                //leading: Image.asset("assets/images/logo.png"  ),
                title: Text('INOUSSA Louqmane'),
                subtitle: Text('Inetlligence artificielle'),
                trailing: Icon(Icons.more_vert),

              ),
            ),
            Card(

              child: ListTile(
                //leading: Image.asset("assets/images/logo.png"  ),
                title: Text('Claudel NDAH'),
                subtitle: Text('Réalité Virtuelle'),
                trailing: Icon(Icons.more_vert),



              ),
            ),
            Card(

              child: ListTile(
                //leading: Image.asset("assets/images/logo.png"  ),
                title: Text('Merveille GNANGNOUI'),
                subtitle: Text('Sécurité Logicielle'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(

              child: ListTile(
                //leading: Image.asset("assets/images/logo.png"  ),
                title: Text('Martinien FIOGBE'),
                subtitle: Text('Génie Logiciel'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(

              child: ListTile(
                //leading: Image.asset("assets/images/logo.png"  ),
                title: Text('Valentin KOLE'),
                subtitle: Text('Réalité Augmenté'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(

              child: ListTile(
                //leading: Image.asset("assets/images/logo.png"  ),
                title: Text('Yanick DAN'),
                subtitle: Text('Génie Logiciel'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(

              child: ListTile(
                //leading: Image.asset("assets/images/logo.png"  ),
                title: Text('Kaled BOUKARY'),
                subtitle: Text('IOT'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(

              child: ListTile(
                //leading: Image.asset("assets/images/logo.png"  ),
                title: Text('DESCRIPTION DE NOTRE PROJET'),
                subtitle: Text('IOT'),
                //trailing: Icon(Icons.more_vert),
              ),
            ),






          ],
        ),
      ),
    );
  }
}


