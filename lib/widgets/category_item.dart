import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{
  final String name;
  final IconData icon;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap,
});
  @override
  Widget build(BuildContext context) {
   final color = Theme.of(context).colorScheme;
   return InkWell(
     onTap: onTap,
     borderRadius: BorderRadius.circular(12),
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 8),
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           CircleAvatar(
             radius: 28,
             backgroundColor: color.primary,
             child: Icon(icon,color: color.primary,size:28),
           ),
           const SizedBox(height: 6,),
           Text(name,style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
         ],
       ),
     ),
   );
  }
}