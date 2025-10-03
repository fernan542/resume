import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume/constants.dart';
import 'package:resume/resume/resume.dart';

Future<Uint8List> generateResume({required PdfColor primary}) async {
  final doc = pw.Document();

  doc.addPage(
    pw.MultiPage(
      pageTheme: pw.PageTheme(
        orientation: pw.PageOrientation.portrait,
        pageFormat: PdfPageFormat.letter.copyWith(
          marginBottom: 0,
          marginLeft: 0,
          marginRight: 0,
          marginTop: 0,
        ),
        theme: pw.ThemeData.withFont(
          base: await PdfGoogleFonts.poppinsLight(),
          bold: await PdfGoogleFonts.poppinsMedium(),
          icons: await PdfGoogleFonts.materialIconsRegular(),
        ),
      ),
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      header: (context) {
        if (context.pageNumber != 1) return pw.SizedBox();
        return ResumeHeader(primary: primary);
      },
      build: (context) {
        return [
          pw.Padding(
            padding: pw.EdgeInsets.all(16),
            child: pw.Partition(
              child: pw.Column(
                children: [
                  RecordSection(
                    primary: primary,
                    title: 'Education',
                    records: educationRecords,
                  ),
                  RecordSection(
                    primary: primary,
                    title: 'Experience',
                    records: experienceRecords,
                  ),
                  RecordSection(
                    primary: primary,
                    title: 'Awards & Achievements',
                    records: aaRecords,
                  ),
                  RecordSection(
                    primary: primary,
                    title: 'Skills',
                    records: skillRecords,
                  ),
                  RecordSection(
                    primary: primary,
                    title: 'Interests',
                    records: interestRecords,
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      footer: (context) {
        // if (context.pageNumber != context.pagesCount) return pw.SizedBox();
        if (context.pageNumber == 2) return ResumeFooter();
        return pw.SizedBox();
      },
    ),
  );

  return await doc.save();
}
