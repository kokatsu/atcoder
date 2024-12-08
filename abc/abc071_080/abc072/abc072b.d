import std;

void main() {
    string s;
    readf("%s\n", s);

    auto res = std.range.stride(s, 2);
    res.writeln;
}