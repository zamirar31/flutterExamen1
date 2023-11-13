import 'package:flutter/material.dart';


class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP CEUTEC'),
        backgroundColor: Color.fromARGB(255, 91, 44, 179)
      ),
      drawer: MainDrawer(),
      body: Center(
        child: ListView(
        children: <Widget>[
          DrawerItem(icon: Icons.public, text: 'Noticias', onTap: () => Navigator.pushNamed(context, '/noticias')),
          DrawerItem(icon: Icons.monetization_on, text: 'El cambio de Monedas', onTap: () => Navigator.pushNamed(context, '/cambioMonedas')),
          DrawerItem(icon: Icons.list, text: 'Lista de tareas', onTap: () => Navigator.pushNamed(context, '/listaTareas')),
          DrawerItem(icon: Icons.podcasts, text: 'Podcast', onTap: () => Navigator.pushNamed(context, '/podcast')),
        ],
      ),
   ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
         UserAccountsDrawerHeader(
              accountName: Text('MENU CEUTEC'),
              accountEmail: Text('zarivera@unitec.edu'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Snoopy_Peanuts.png/220px-Snoopy_Peanuts.png'), 
              ),
            decoration: BoxDecoration( color: Color.fromARGB(255, 49, 59, 162),
            ),
            ),
          DrawerItem(icon: Icons.home, text: 'Pagina Inicio', onTap: () => Navigator.pushNamed(context, '/home')),
          DrawerItem(icon: Icons.feed, text: 'Noticias', onTap: () => Navigator.pushNamed(context, '/noticias')),
          DrawerItem(icon: Icons.monetization_on, text: 'El cambio de Monedas', onTap: () => Navigator.pushNamed(context, '/cambioMonedas')),
          DrawerItem(icon: Icons.view_list_outlined, text: 'Lista de tareas', onTap: () => Navigator.pushNamed(context, '/listaTareas')),
          DrawerItem(icon: Icons.podcasts, text: 'Podcast', onTap: () => Navigator.pushNamed(context, '/podcast')),
        ],
      ),
    );
  }
}

class DrawerItem extends ListTile {
  DrawerItem({required IconData icon, required String text, required VoidCallback onTap}) : super(
    leading: Icon(icon),
    title: Text(text),
    onTap: onTap,
  );
}