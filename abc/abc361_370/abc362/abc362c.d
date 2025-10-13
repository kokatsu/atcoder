import std;

void main() {
    int N;
    readf("%d\n", N);

    long[] L = new long[](N), R = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", L[i], R[i]);
    }

    long M = L.sum;
    if (M > 0 || R.sum < 0) {
        writeln("No");
        return;
    }

    long[] X = L.dup;
    foreach (i, r; R) {
        long d = min(r - X[i], -M);
        M += d;
        X[i] += d;
    }

    string res = format("Yes\n%(%d %)", X);
    res.writeln;
}
