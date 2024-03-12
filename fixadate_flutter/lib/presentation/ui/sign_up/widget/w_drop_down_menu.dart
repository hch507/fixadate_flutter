import 'package:flutter/material.dart';

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({super.key});

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? overlayEntry;
  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: () {
          setState(() {
            overlayEntry = _showDropDownMenu();
            Overlay.of(context)?.insert(overlayEntry!);
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.blue),
              // Adjust the border color as needed
              color: Colors.white),
          child: _dropDownItem("text1", Icons.keyboard_arrow_down_rounded)
        ),
      ),
    );
  }

  OverlayEntry _showDropDownMenu() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    return OverlayEntry(builder: (context) {
      return Positioned(
        width: renderBox.size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          child: Material(
            color: Color.fromRGBO(19, 19, 19, 1.0,),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.blue),
                  // Adjust the border color as needed
                  color: Colors.white),
              child: Column(
                children: [
                  _dropDownItem("text1", Icons.keyboard_arrow_up_rounded),
                  _dropDownItem("text2", Icons.ac_unit_outlined),
                  _dropDownItem("text3", Icons.access_alarm)
                  // Add more list tiles as needed
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
  Widget _dropDownItem(String text, IconData icon){
    return GestureDetector(
      onTap: (){
        overlayEntry?.remove();
      },
      child: Row(
        children: [
          Text(
            "${text}",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          Spacer(),
          // Icon(Icons.keyboard_arrow_down_rounded)
          Icon(icon)
        ],
      ),
    );
  }

}


