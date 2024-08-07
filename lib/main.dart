import 'package:flutter/material.dart';

void main() {
 runApp(myapp());
  
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: text(),
    );
  }
}
class text extends StatelessWidget {
   text({super.key});
  TextEditingController email=TextEditingController();
  TextEditingController usernamer=TextEditingController();
  TextEditingController password=TextEditingController();
  String email1='';
  String password1='';
  String username='';
  void check(){
   if (email.text.contains("@")) 
   print("ok");{
     
   }
   if (password.text.length<3) {
     
     print("No");
   }
    
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     shadowColor: Colors.greenAccent[200],
      ),
body: Container(
  width: double.infinity,
  height: double.infinity,
  color: Colors.white,
  child: Column(
    children: [
      TextFormField(
        controller: email,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
        labelText: "email",labelStyle: TextStyle(fontSize: 20,color: Colors.black12),
        ),
        validator: (value) {
          if (value==null||!value.contains("@")) {
            return 'error';
          }
          return null;
        },
       onSaved: (Value) {
         email1 = Value ?? ; 
       },
      ),
        TextFormField(
        controller: password,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
        labelText: "password",labelStyle: TextStyle(fontSize: 20,color: Colors.black12),
        ),
        validator: (value) {
          if (value==null||value.length<3) {
            return 'error';
          }
          return null;
        },
       onSaved: (Value) {
       password1= Value ?? ;
       },

        ),
        TextFormField(
        controller:usernamer,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
        labelText: "username",labelStyle: TextStyle(fontSize: 20,color: Colors.black12),
        ),
        validator: (value) {
          if (value==null) {
            return 'error';
          }
          return null;
        },
       onSaved: (Value) {
      username= Value ?? ;
       },

        ),
        ElevatedButton(onPressed: check, child:Text('login')),
    ],
  ),
),
    );
  }
}


