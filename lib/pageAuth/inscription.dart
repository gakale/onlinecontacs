import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  String nomComplet = '';
  String  email= '';
  String password = '';
  String ConfirmMdp = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('assets/logo.png', height: 100.0, width: 100.0,),
                SizedBox(height: 10.0),
                Center(
                  child: Text('Crée un compte online Contact',
                  style: Theme.of(context).textTheme.title,),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom Complet',
                    border: OutlineInputBorder()
                  ),
                  validator: (val)=> val.isEmpty ? 'Entrez votre nom': null,
                  onChanged:(val) => nomComplet = val,

                ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder()
              ),
              validator: (val)=> val.isEmpty ? 'Entrez votre email': null,
              onChanged:(val) => email = val,


            ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder()
                  ),
                  validator: (val)=> val.length < 6 ? 'Entrez un mot de passe de plus de 6 caractère': null,
                  onChanged:(val) => password = val,

                  obscureText:true,
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Confirmation de passe',
                      border: OutlineInputBorder()
                  ),
                  onChanged: (val)=> ConfirmMdp = val ,
                  validator:(val) => ConfirmMdp != password ? 'Mot de passe ne correspond pas ':null,

                  obscureText: true,
                ),
                FlatButton(

                  onPressed: (){
                    if(_formKey.currentState.validate()){
                      //si une personne clique sur le bouton ce qui doit se passsez

                    }
                  },
                  color: Colors.amber,
                  child: Text('S\'incrire'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                OutlineButton(
                  onPressed: (){},
                  color: Colors.amber,
                  borderSide: BorderSide(width: 1.0, color: Colors.black),
                  child: Text('Se Connecter'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ],
            ),
          ),
        ),
    ),
    );
  }
}
