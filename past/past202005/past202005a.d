import std;

void main() {
    string s, t;
    readf("%s\n%s\n", s, t);

    string res = "different";
    if (s == t) res = "same";
    else if (s.toUpper == t.toUpper) res = "case-insensitive";

    res.writeln;
}