import 'package:flutter/material.dart';

class AboutServicesScreen extends StatelessWidget {
  const AboutServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 200,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ...List.generate(5, (index) => const Icon(Icons.star)),
                        const SizedBox(width: 10),
                        const Text('(130 Reviews)'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text('Complete Kitchen Cleaning'),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(text: r'$150', style: TextStyle(color: Colors.black)),
                          TextSpan(
                            text: r'$150',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const CircleAvatar(maxRadius: 20),
                        const SizedBox(width: 10),
                        const Expanded(child: Text('Mark Willions \nServices Provider')),
                        ElevatedButton(onPressed: () {}, child: const Text('Add')),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
