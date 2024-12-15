import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new long[](N), T = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", A[i], T[i]);

    zip(A, T).sort;

    long res = max(A[N - 1], T[N - 1]);
    foreach_reverse (i; 0 .. N - 1) {
        res = max(res + A[i + 1] - A[i], T[i]);
    }

    res += A[0];

    res.writeln;
}
