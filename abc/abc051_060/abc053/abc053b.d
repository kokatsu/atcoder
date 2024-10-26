import std;

void main() {
    string s;
    readf("%s\n", s);

    auto n = s.length;

    auto a = n.iota.filter!(i => s[i] == 'A').array;
    auto z = n.iota.filter!(i => s[i] == 'Z').array;

    auto res = z.back - a.front + 1;
    res.writeln;
}