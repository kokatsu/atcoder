import std;

enum int D = 24;
enum int M = 9;

void main() {
    int N;
    readf("%d\n", N);

    auto imos = new int[](D * 3 + 1);
    foreach (i; 0 .. N) {
        int W, X;
        readf("%d %d\n", W, X);

        imos[X + 1] += W, imos[X + M + 1] -= W;
        imos[X + D + 1] += W, imos[X + D + M + 1] -= W;
    }

    foreach (i; 0 .. D * 3) {
        imos[i + 1] += imos[i];
    }

    int res = imos.maxElement;
    res.writeln;
}
