import std;

void main() {
    string s;
    readf("%s\n", s);

    int res = s.length.to!int / 2 - s.count('p').to!int;
    res.writeln;
}
