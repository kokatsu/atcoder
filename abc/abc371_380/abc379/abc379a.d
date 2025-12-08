import std;

void main() {
    dchar a, b, c;
    readf("%c%c%c\n", a, b, c);

    string res = format("%c%c%c %c%c%c", b, c, a, c, a, b);
    res.writeln;
}
