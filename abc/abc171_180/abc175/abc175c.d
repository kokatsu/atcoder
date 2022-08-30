import std;

void main() {
    long X, K, D;
    readf("%d %d %d\n", X, K, D);

    if (X < 0) X = -X;

    long cnt = min(K, X/D);
    X -= D * cnt, K -= cnt;

    long res = (K % 2 == 0 ? X : D - X);
    res.writeln;
}