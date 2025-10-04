import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/types.dart';

class RecordSection extends pw.StatelessWidget {
  RecordSection({
    required this.primary,
    required this.title,
    required this.records,
  });

  final PdfColor primary;
  final String title;
  final List<PersonalRecord> records;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Divider(color: primary, height: 2),
          _RecordTitle(title: title),
          for (final record in records) _RecordItem(record),
        ],
      ),
    );
  }
}

class _RecordTitle extends pw.StatelessWidget {
  _RecordTitle({required this.title});
  final String title;

  @override
  pw.Widget build(pw.Context context) {
    final textTheme = pw.Theme.of(context);
    final titleStyle = textTheme.defaultTextStyle.copyWith(
      fontWeight: pw.FontWeight.bold,
    );

    return pw.Padding(
      padding: pw.EdgeInsets.symmetric(vertical: 4),
      child: pw.Text(title.toUpperCase(), style: titleStyle),
    );
  }
}

class _RecordItem extends pw.StatelessWidget {
  _RecordItem(this.record);

  final PersonalRecord record;

  @override
  pw.Widget build(pw.Context context) {
    final textTheme = pw.Theme.of(context);

    // For making the title clickable if destination is not null.
    final titleWidget = pw.Text(
      record.title,
      style: textTheme.bulletStyle.copyWith(
        fontWeight: pw.FontWeight.bold,
        fontSize: 11,
        decoration: record.onTapDestination != null
            ? pw.TextDecoration.underline
            : null,
      ),
    );

    return pw.Container(
      padding: pw.EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: pw.EdgeInsets.only(bottom: 8),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
        mainAxisSize: pw.MainAxisSize.max,
        children: [
          pw.SizedBox(
            width: 120,
            child: pw.Text(
              record.leading,
              textAlign: pw.TextAlign.right,
              style: textTheme.bulletStyle.copyWith(
                color: PdfColors.grey900,
                fontSize: 11,
              ),
            ),
          ),
          pw.Expanded(
            flex: 4,
            child: pw.Padding(
              padding: pw.EdgeInsets.symmetric(horizontal: 16),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisSize: pw.MainAxisSize.max,
                    children: [
                      if (record.onTapDestination != null)
                        pw.UrlLink(
                          child: titleWidget,
                          destination: record.onTapDestination!,
                        ),

                      if (record.onTapDestination == null) titleWidget,
                      pw.Text(
                        record.trailing,
                        style: textTheme.bulletStyle.copyWith(
                          color: PdfColors.grey900,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  if (record.subtitle != null)
                    pw.Text(
                      record.subtitle!,
                      style: textTheme.bulletStyle.copyWith(
                        fontStyle: pw.FontStyle.italic,
                      ),
                    ),
                  pw.SizedBox(height: 4),
                  if (record.details != null)
                    pw.Text(
                      record.details!,
                      softWrap: true,
                      style: textTheme.defaultTextStyle,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
