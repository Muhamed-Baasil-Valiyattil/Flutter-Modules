import 'package:flutter/material.dart';

class SimpleButton extends StatefulWidget {

  final Function()? onTap; // The onTap function passed from outside
  final String buttonText; // The text displayed on the button

  // Constructor that takes onTap and buttonText as arguments
  const SimpleButton({super.key, required this.onTap, required this.buttonText});

  @override
  _SimpleButtonState createState() => _SimpleButtonState();
}

class _SimpleButtonState extends State<SimpleButton> {
  double _opacity = 1.0; // Variable to control the opacity of the button

  void _onTapDown(TapDownDetails details) {
    // Called when the button is pressed
    setState(() {
      _opacity = 0.7; // Reduce opacity on press
    });
  }

  void _onTapUp(TapUpDetails details) {
    // Called when the button is released
    setState(() {
      _opacity = 1.0; // Return to full opacity
    });
  }

  void _onTapCancel() {
    // Called if the button press is canceled (e.g., dragged off)
    setState(() {
      _opacity = 1.0; // Return to full opacity
    });
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onTap: widget.onTap,
      child: AnimatedOpacity(
        opacity: _opacity, // The opacity of the button changes
        duration: const Duration(milliseconds: 150), // Animation duration
        child: Container(
          width: screenWidth ,  // Button width is 50% of the screen width
          height: screenHeight * 0.075,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Center(
            child: Text(
              widget.buttonText,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}


