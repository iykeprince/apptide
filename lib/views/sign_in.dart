import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(onTap: (){}, child: Icon(Icons.arrow_back, color: Colors.black,),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Sign In'),
          Text('Sign in'),
          SignInField(
            leading: Icons.person,
            title: 'Username/Email'
          ),
          SizedBox(height: 8),
          SignInField(title: 'Password', leading: Icons.security),
          Row(children: [
            Text('Lost Your Password?')
          ],),
          SizedBox(height: 12),
          SignInButton(title: 'Sign In', onHandleClick: (){})
      ],)
    );
  }
}

class SignInField extends StatelessWidget {
  final String title;
  final IconData? leading;
  const SignInField({Key? key, required this.title, this.leading,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}

class SignInButton extends StatelessWidget {
  final String title;
  final Function()? onHandleClick;
  const SignInButton({Key? key,required this.title,this.onHandleClick,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Text('$title', style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500
          )),
          Icon(Icons.arrow_forward, color: Colors.white,size: 30,),
        ],
      ),
    );
  }
}