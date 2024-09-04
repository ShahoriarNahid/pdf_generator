import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf_generator/model/bill_model.dart';
import 'package:printing/printing.dart';
import '../helpers/pdf_helper.dart';


class PdfPreviewPage extends StatelessWidget {
  final BillModel bill;
  const PdfPreviewPage({super.key, required this.bill});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Bill Preview'),
      ),
      body: InteractiveViewer(
        panEnabled: false,
        boundaryMargin: const EdgeInsets.all(80),
        minScale: 0.5,
        maxScale: 4,
        child: PdfPreview(
          loadingWidget: const CupertinoActivityIndicator(),
          build: (context) => pdfBuilder(bill),
        ),
      ),
    );
  }
}
