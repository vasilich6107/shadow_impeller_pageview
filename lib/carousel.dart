import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      6,
          (index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade300,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: SizedBox(
          height: 280,
          child: Center(
            child: Text(
              "Page $index",
              style: const TextStyle(color: Colors.indigo),
            ),
          ),
        ),
      ),
    );

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 16),
          SizedBox(
            height: 240,
            child: PageView.builder(
              controller: controller,
              // itemCount: pages.length,
              itemBuilder: (_, index) {
                return pages[index % pages.length];
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 12),
            child: Text(
              'Worm',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
