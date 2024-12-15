import std;

void main() {
    long N;
    readf("%d\n", N);

    auto S = N.to!real
        .sqrt
        .floor
        .to!long;

    long res = long.max;
    foreach (i; 1 .. S + 1) {
        if (N % i == 0) {
            auto A = i.log10.floor.to!long + 1;
            auto B = log10(N / i).floor.to!long + 1;

            res = min(res, max(A, B));
        }
    }

    res.writeln;
}
