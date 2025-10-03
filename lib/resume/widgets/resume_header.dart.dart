import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/constants.dart';
import 'package:resume/extensions.dart';
import 'package:resume/types.dart';

class ResumeHeader extends pw.StatelessWidget {
  ResumeHeader({required this.primary});

  final PdfColor primary;

  @override
  pw.Widget build(pw.Context context) {
    final textTheme = pw.Theme.of(context);
    final contactStyle = textTheme.paragraphStyle.copyWith(color: white);

    return pw.Container(
      alignment: pw.Alignment.centerRight,
      decoration: pw.BoxDecoration(
        gradient: pw.LinearGradient(
          begin: pw.Alignment.centerLeft,
          end: pw.Alignment.centerRight,
          colors: [primary, primary.burn],
        ),
      ),
      child: pw.Padding(
        padding: const pw.EdgeInsets.all(24.0),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            // Name
            pw.Text(
              fullName,
              style: textTheme.header0.copyWith(color: white),
              textScaleFactor: 1.2,
            ),
            // Contacts
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                for (final contact in contacts)
                  _ContactItem(contact: contact, style: contactStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactItem extends pw.StatelessWidget {
  _ContactItem({required this.contact, required this.style});

  final Contact contact;
  final pw.TextStyle style;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      children: [
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            pw.Icon(pw.IconData(contact.icon), color: white, size: 18),
            pw.SizedBox(width: 8),
            if (contact.url != null)
              pw.UrlLink(
                destination: contact.url!,
                child: pw.Text(contact.label, style: style),
              ),
            if (contact.url == null) pw.Text(contact.label, style: style),
          ],
        ),
        pw.SizedBox(height: 4),
      ],
    );
  }
}
