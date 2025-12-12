import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FA),
      body: SafeArea(
        child: Column(
          children: [
            // ===========================
            // HEADER
            // ===========================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 26),
              decoration: const BoxDecoration(
                color: Color(0xFF2A4BA0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(26),
                  bottomRight: Radius.circular(26),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TOP ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hey, Mark!",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      Stack(
                        children: [
                          const Icon(Icons.notifications_none_rounded,
                              size: 30, color: Colors.white),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFFB52E),
                              ),
                              child: const Text(
                                "3",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 18),

                  // SEARCH BAR
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF153075),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.white, size: 22),
                        SizedBox(width: 12),
                        Text(
                          "Search Products or store",
                          style: TextStyle(
                            fontFamily: "Manrope",
                            color: Colors.white60,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // PICK UP & WITHIN
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PICK UP",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                "Juliana CSFP",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white)
                            ],
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "WITHIN",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                "1 Hour",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                children: [
                  // ===========================
                  // PROMO CARD
                  // ===========================
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 173, 50),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.35),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(Icons.image,
                              color: Colors.white, size: 36),
                        ),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Text(
                            "Get\n50% OFF\nOn first 03 order",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 26),

                  const Text(
                    "Recommended",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ===========================
                  // RECOMMENDED LIST
                  // ===========================
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => const SizedBox(width: 14),
                      itemCount: 4,
                      itemBuilder: (_, __) {
                        return Container(
                          width: 130,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: const Color(0xFFE8ECF2), width: 1.6),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 86,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF3F6FA),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(Icons.image,
                                    size: 40, color: Color(0xFFBDC4CE)),
                              ),

                              const SizedBox(height: 10),

                              const Text(
                                "Tilapia",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF2A2D37),
                                ),
                              ),

                              const Text(
                                "Shop/Store",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 12,
                                  color: Color(0xFF9AA1AE),
                                ),
                              ),

                              const Spacer(),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "₱000 /kg",
                                    style: TextStyle(
                                      fontFamily: "Manrope",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF2A2D37),
                                    ),
                                  ),

                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF2A4BA0),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}