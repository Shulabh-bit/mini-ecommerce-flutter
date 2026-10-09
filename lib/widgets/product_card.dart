import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String name;
  final String image;
  final double price;
  final String? badge;
  final VoidCallback onViewDetails;

  const ProductCard({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.onViewDetails,
    this.badge,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _favorite = false;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: InkWell(
        onTap: widget.onViewDetails, // tapping anywhere on the card opens details
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: Colors.grey.shade300,
                      child: const Icon(Icons.image_not_supported, size: 40),
                    ),
                  ),
                  if (widget.badge != null)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(widget.badge!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  Positioned(
                    top: 2,
                    right: 2,
                    child: IconButton(
                      style: IconButton.styleFrom(backgroundColor: Colors.white70),
                      iconSize: 20,
                      icon: Icon(
                        _favorite ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () => setState(() => _favorite = !_favorite),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                  const SizedBox(height: 2),
                  Text('Rs. ${widget.price.toStringAsFixed(0)}',
                      style: TextStyle(color: primary, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: double.infinity,
                    height: 32,
                    child: ElevatedButton(
                      onPressed: widget.onViewDetails,
                      style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                      child: const Text('View Details', style: TextStyle(fontSize: 12)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}