import 'dart:io';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume/extensions.dart';
import 'package:resume/helpers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        maxPageWidth: 700,
        build: (format) =>
            generateResume(primary: context.colorScheme.primary.toPdfColor),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final pdf = await generateResume(
            primary: context.colorScheme.primary.toPdfColor,
          );
          final file = File("C:/Users/ferna/Downloads/zxczxc.pdf");
          await file.writeAsBytes(pdf);
        },
        tooltip: 'Download',
        child: Icon(Icons.download),
      ),
    );
  }
}
