import 'package:flutter/material.dart';
import 'package:login_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var isHidden = true;
  var isHiddenIcon = Icons.visibility_off;
  var usernameCtrl = TextEditingController();

  void changeVisibility(){
    setState(() {
      isHidden = isHidden == true ? false: true;
      isHiddenIcon = isHiddenIcon == Icons.visibility_off ? Icons.visibility: Icons.visibility_off;
    });
    
  }

  void login(ctx){
    Navigator.pushReplacement(ctx,
    MaterialPageRoute(
        builder: (_)=> HomeScreen(user: usernameCtrl.text)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: .stretch,
              mainAxisAlignment: .center,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmCCFE0mtMWrpXda0PeHXHDFyf3fKX0EXjCZq_P4gBfDkfpO04peCSHpI&s=10", height: 200, width: 200,),
                SizedBox(height: 30,),
                TextField(
                  controller: usernameCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), 
                    label: Text('Username')
                  ),
                  
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                    suffix: GestureDetector(
                      onTap: () => changeVisibility(),
                      child: Icon(isHiddenIcon),
                      )
                  ),
                  obscureText: isHidden,
                
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    login(context);
                  }, 
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                )
              ],
            ),
          )
        ) 
      ),
    );
  }
}