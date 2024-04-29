import std;

void main() {
    int n;
    readf("%d\n", n);

    string s = readln.chomp;

    foreach (_; 0 .. n) {
        auto g = s.group.array;
        s = g.map!(x => x[1].to!string ~ x[0].to!string).join;
    }

    s.writeln;
}