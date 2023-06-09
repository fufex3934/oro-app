import 'package:afoola/screens/uffata_detail_screen.dart';
import 'package:flutter/material.dart';

class UffataItem extends StatelessWidget {
  final String imageUrl;
  final String description;
  final String source;
  final String uses;

  const UffataItem({
    required this.imageUrl,
    required this.description,
    required this.uses,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 120,
              width: 120,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(
                      context,
                      UffataDetailScreen.routName,
                    arguments: {
                        'image':imageUrl,
                      'description':description,
                      'src':source,
                      'use':uses
                    }
                  );
                },
                child: ClipRRect(
                  borderRadius:  const BorderRadius.all(Radius.circular(16.0)),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          size: 16,
                          color: Colors.green,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            uses,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Pacifico',
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.link,
                          size: 16,
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            source,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              color: Colors.grey[700],
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
