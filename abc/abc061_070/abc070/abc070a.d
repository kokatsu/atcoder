import std;

void main() {
    dchar a, b, c;
    readf("%c%c%c\n", a, b, c);

    string res = (a == c) ? "Yes" : "No";
    res.writeln;
}
