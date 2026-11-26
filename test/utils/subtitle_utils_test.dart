import 'package:PiliPlus/utils/subtitle_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('exports only subtitle text in entry order', () {
    final cues = [
      {'from': 1, 'to': 2, 'content': ' \u4f60\u597d \n'},
      {'from': 3, 'to': 4, 'content': 'First line\nMeet at 12:30.'},
    ];

    expect(
      SubtitleUtils.json2Txt(cues),
      '\u4f60\u597d\nFirst line\nMeet at 12:30.',
    );
  });

  test('exports empty text when there are no subtitles', () {
    expect(SubtitleUtils.json2Txt([]), isEmpty);
  });
}
