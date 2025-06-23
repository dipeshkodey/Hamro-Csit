import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerScreen extends StatelessWidget { 
  final String pdfs;
  const PdfViewerScreen({super.key, required this.pdfs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SfPdfViewer.asset(pdfs),
    );
  }
}