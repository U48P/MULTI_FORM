import 'package:flutter/material.dart';
import 'package:multi_form/form.dart';
import 'package:multi_form/user.dart';

class Multiform extends StatefulWidget {
  @override
  _MultiformState createState() => _MultiformState();
}

class _MultiformState extends State<Multiform> {
  List<User> users = [];
  List<UserForm> forms = [];

  @override
  Widget build(BuildContext context) {
    forms.clear();
    for (int i = 0; i < users.length; i++) {
      forms.add(UserForm(
        key: GlobalKey(),
        user: users[i],
        onDelete: () => onDelete(i),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Users Form'),
        actions: <Widget>[
          FlatButton(
            child: Text('Save'),
            onPressed: onSave,
          )
        ],
      ),
      body: users.length <= 0
          ? Center(
              child: Text('Add form by taping + button below'),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (_, i) => forms,
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: onAddForm,
      ),
    );
  }

  // on form user deleted
  void onDelete(int index) {
    setState(() {
      users.remove(index);
    });
  }

  //on add form

  void onAddForm() {
    setState(() {
      users.add(User());
    });
  }

  /// on save forms
  void onSave() {
    forms.forEach((form) => form.isValid());
  }
}
