import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = iota(N + 1);
    foreach_reverse (a; A)
        a.writeln;
}
