import 'dart:typed_data';
import 'package:act2/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyCVPage extends StatefulWidget {
  const MyCVPage({super.key});

  @override
  State<MyCVPage> createState() => _MyCVPageState();
}

class _MyCVPageState extends State<MyCVPage> {

  Uint8List? image;
  void selectImage() async{
    Uint8List img = await changePFP(ImageSource.gallery);
    setState(() {
      image = img;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 65, 162, 168),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color:  Color.fromARGB(255, 65, 162, 168),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CV Sections',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
            ListTile(
              leading: const Icon(
                Icons.school_rounded,
                color:  Color.fromARGB(255, 65, 162, 168),
              ),
              title: const Text('Education'),
              onTap: () {
                Navigator.pushNamed(context, '/education');
              }
            ),
            ListTile(
              leading: const Icon(
                Icons.code_rounded,
                color:  Color.fromARGB(255, 65, 162, 168),
              ),
              title: const Text('Skills'),
              onTap: () {
                Navigator.pushNamed(context, '/skills');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.create_new_folder,
                color: Color.fromARGB(255, 65, 162, 168),),
              title: const Text('Projects'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.download_done_rounded,
                color: Color.fromARGB(255, 65, 162, 168),
              ),
              title: const Text('Experience'),
              onTap: () {
                Navigator.pushNamed(context, '/experience');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_rounded,
                color:  Color.fromARGB(255, 65, 162, 168),
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              }
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                image != null
                    ? CircleAvatar(
                  radius: 65.0,
                  backgroundImage: MemoryImage(image!),
                )
                    : const CircleAvatar(
                  radius: 65.0,
                  backgroundColor: Color.fromARGB(255, 65, 162, 168),
                  child: Text(
                    'VGC',
                    style:
                    TextStyle(fontSize: 40, color: Colors.black),
                  ),
                ),
                Positioned(
                  bottom: -5,
                  left: 80,
                  child: IconButton(
                    onPressed: selectImage,
                    icon: const Icon(Icons.add_a_photo),
                  ),
                ),
              ]
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'Vency Gyro R. Capistrano',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0,),
            const Text(
              '09238291022',
              style: TextStyle(fontSize: 18.0,),
            ),
            const SizedBox(height: 5.0,),
            const Text(
              '22-08183@g.batstate-u.edu.ph',
              style: TextStyle(fontSize: 18.0,),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 150,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Professional Goal',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
            ),
          ],
        ),
      ),
    );
  }
}