import 'package:flutter/material.dart';
import 'package:responsive_web_app/responsive.dart';

class RightSection extends StatelessWidget {
  const RightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ListView.builder(
        shrinkWrap: true,
        physics: Responsive.isMobile(context)
            ? NeverScrollableScrollPhysics()
            : null,
        itemCount: 100,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.yellow,
            height: 100,
          ),
        ),
      ),
    );
  }
}
