import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      "Fishes",
      "Meats",
      "Vegetables",
      "Fruits",
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FA),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 26),
              decoration: const BoxDecoration(
                color: Color(0xFF1F3A93),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(26),
                  bottomRight: Radius.circular(26),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hey, Mark!",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Stack(
                        children: [
                          const Icon(Icons.notifications_none_rounded,
                              color: Colors.white, size: 28),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFB52E),
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                "3",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    "Shop",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    "By Category",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 22),

            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.92,
                children: List.generate(
                  8,
                  (index) {
                    final name = categories[index % categories.length];
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.image,
                              size: 60, color: Colors.grey),
                          const SizedBox(height: 14),
                          Text(
                            name,
                            style: const TextStyle(
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "Detail",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}