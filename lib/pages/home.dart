import 'package:flutter/material.dart';
import 'web_view_container.dart';

class Home extends StatelessWidget {
  final List<String> _links = ['https://github.com/MrazTevin'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text widget
              Text(
                'Tevin Milla',
                style: TextStyle(fontSize: 28),
              ),
              SizedBox(height: 40.0,),
              // Circular image with border
              Container(
                width: 100, // Adjust width as needed
                height: 100, // Adjust height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5), // Light black border
                    width: 2.0, // Border width
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/milla.png', // Replace with your image URL
                    fit: BoxFit.cover, // Ensure the image fills the circle
                  ),
                ),
              ),
              SizedBox(height: 40), // Add some spacing
              // ElevatedButton widget
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  // primary: Theme.of(context).primaryColor,
                  backgroundColor: Colors.black26,
                  padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                ),
                onPressed: () => _handleURLButtonPress(context, _links[0]),
                child: Text('View GitHub Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WebViewContainer(url)),
    );
  }
}
