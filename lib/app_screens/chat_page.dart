import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ super.key });

  @override
 _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

   final _formKey = GlobalKey<FormState>();
  var name = '';
  var email = '';
  var password = '';

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Form(
        key:_formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(fontSize: 20),
                  
                ),
                controller: nameController,
                validator: (value) {
                    if(value == '' && value !=null) {
                    return 'Please enter name';
                  }
                },
              ),
               TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 20),
                  
                ),
                controller: emailController,
                validator: (value) {
                  if(value == '' && value !=null) {
                    return 'Please enter Email';
                  } else if(!value!.contains('@')) {
                    return 'Please Valid Email';
                  }
                },
              ),
               TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 20),
                  
                ),
                controller: passwordController,
                validator: (value) {
                    if(value == '' && value !=null) {
                    return 'Please enter password';
                  }
                },
              ),
              ElevatedButton(onPressed: () => {
                if(_formKey.currentState!.validate()) {
                 setState(() => {
                  name = nameController.text,
                  email = emailController.text,
                  password = passwordController.text,
                 })
                }
              }, child: Text('Submit')),
              Text('Name: ${name}'),
              Text('Email: ${email}'),
              Text('Password: ${password}'),

            ],
          ),
      ),
    );
  }
}