import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListShimmer extends StatelessWidget {
  const ListShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 10; i++) // Create a loop to generate multiple shimmering items
          Column(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!, // Base color of the shimmer effect
                highlightColor: Colors.grey[100]!, // Highlight color of the shimmer effect
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 22),
                  child: Container(
                    padding: const EdgeInsets.only(left: 7),
                    width: 1150.52, // Set the width of the shimmering container
                    height: 75.90, // Set the height of the shimmering container
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF7F7F7),
                      // Background color of the container
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 13, // Fixed height container for creating spacing
                width: double.infinity, // Container spans the full width
                color: Colors
                    .white, // Background color of the fixed height container
              ),
            ],
          ),
      ],
    );
  }
}
