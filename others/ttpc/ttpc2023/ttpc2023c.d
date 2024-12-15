import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long N;
        readf("%d\n", N);

        long S = to!real(N - 1).sqrt.floor.to!long;

        long M = N - S * S;

        long res = min(S ^^ 2, (S - 1) ^^ 2 + M * 2);
        res.writeln;
    }
}
