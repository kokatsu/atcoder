import std;

void main() {
    dchar C, c;
    readf("%c %c", C, c);

    string res = std.uni.toLower(C) == c ? "Yes" : "No";
    res.writeln;
}
