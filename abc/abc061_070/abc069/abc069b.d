import std;

void main() {
    string s;
    readf("%s\n", s);

    auto l = s.length;

    string res = s[0] ~ to!string(l-2) ~ s[l-1];
    res.writeln;
}