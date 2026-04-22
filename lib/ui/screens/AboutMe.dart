import 'package:flutter/material.dart';

class AboutmePage extends StatelessWidget {
  const AboutmePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: const Center(
        child: Text('This is the About Me page.'),
        
        
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Go Back'),
        ),
    );
    
  }

}