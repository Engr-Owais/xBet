import 'package:flutter/material.dart';

class TopContainer extends StatefulWidget {
  @override
  _TopContainerState createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  Color disable = Colors.grey.withOpacity(0.2);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (index) => Expanded(
          child: index == 3
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 2.0, vertical: 4.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white , fontSize: 8),
                      fillColor: Colors.grey.withOpacity(0.2),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(40.0),
                        ),
                      ),
                      prefixIcon: Icon(Icons.search , color: Colors.white , size: 15,),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: RaisedButton(
                    child: FittedBox(
                      child: Text(
                        index == 0
                            ? "Upcoming"
                            : index == 1
                                ? "Inplay"
                                : index == 2
                                    ? "Goals"
                                    : "Search",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    color: Colors.grey.withOpacity(0.2),
                    onPressed: () {},
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.white, width: 0.1)),
                  ),
                ),
        ),
      ),
    );
  }
}
