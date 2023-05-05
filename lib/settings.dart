import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_page/login.dart';
import 'package:signup_page/profile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _isDark ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 210, 109, 22),
          title: const Text("Settings"),
        ),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: ListView(
              children: [
                _SingleSection(
                
                  children: [
                    _CustomListTile(
                        title: "Dark Mode",
                        icon: Icons.dark_mode_outlined,
                        trailing: Switch(
                            value: _isDark,
                            onChanged: (value) {
                              setState(() {
                                _isDark = value;
                              });
                            }),                         
                            ),
                  ],
                ),
                ListTile(
                  title: const Text('Profile'),
                  leading: const Icon(Icons.person_outlined),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:   (BuildContext context)=>const TopPortion()));
                  },
                ),
                ListTile(
                  title: const Text('Aide & A propos'),
                  leading: const Icon(Icons.help_outline_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Supprimer Mon compte'),
                  leading: const Icon(Icons.delete_outline_outlined),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ]
              ),
             
                ),
              
            ),
          ),
        );
      
    
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  const _CustomListTile(
      {Key? key, required this.title, required this.icon, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: trailing,
      
      
    );
  }
}

class _SingleSection extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  const _SingleSection({
    Key? key,
    this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        Column(
          children: children,
        ),
      ],
    );
  }
}
