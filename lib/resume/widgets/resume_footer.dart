import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ResumeFooter extends pw.StatelessWidget {
  @override
  pw.Widget build(pw.Context context) {
    final textTheme = pw.Theme.of(context);
    final style = textTheme.defaultTextStyle.copyWith(color: PdfColors.grey800);

    return pw.Container(
      height: 70,
      padding: const pw.EdgeInsets.all(28.0),
      child: pw.UrlLink(
        destination: 'https://github.com/fernan542/resume',
        child: pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Text('Made with ', style: style),
            pw.Icon(pw.IconData(0xe87d), color: PdfColors.red, size: 15),
            pw.Text(' using ', style: style),
            pw.FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
