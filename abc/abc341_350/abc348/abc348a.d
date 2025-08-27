import std;

void main() {
    int N;
    readf("%d\n", N);

    string res = iota(1, N + 1).map!(i => i % 3 == 0 ? 'x' : 'o')
        .to!string;
    res.writeln;
}
