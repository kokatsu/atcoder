import std;

void main() {
    string N;
    readf("%s\n", N);

    string res = iota(1, 4).all!(i => N.count(i.to!string) == i) ? "Yes" : "No";
    res.writeln;
}
