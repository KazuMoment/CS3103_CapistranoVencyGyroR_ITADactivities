import 'package:act2/pages/login.dart';
import 'package:act2/pages/skills.dart';
import 'package:flutter/material.dart';
import 'package:act2/pages/home.dart';
import 'package:act2/pages/education.dart';
import 'package:act2/pages/projects.dart';
import 'package:act2/pages/experience.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/home': (context) => const MyCVPage(),
      '/education': (context) => const EducationPage(),
      '/skills': (context) => const SkillsPage(),
      '/projects': (context) => const ProjectsPage(),
      '/experience': (context) => const ExperiencePage(),
      '/login': (context) => LoginPage(),
    },
  ));
}