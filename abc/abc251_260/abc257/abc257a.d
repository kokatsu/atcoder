import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto res = to!dchar((X - 1) / N + 'A');
    res.writeln;
}
