dateToMyFormat(DateTime v) {
  String d = v.day.toString();
  String m = v.month.toString();
  String y = v.year.toString();
  if (d.length == 1) d = '0$d';
  if (m.length == 1) m = '0$m';
  return "$d-$m-$y";
}
