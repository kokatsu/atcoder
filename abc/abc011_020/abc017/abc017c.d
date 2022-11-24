import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long res;
    auto A = new long[](M+2);
    foreach (_; 0 .. N) {
        long l, r, s;
        readf("%d %d %d\n", l, r, s);

        res += s;
        A[l] += s, A[r+1] -= s;
    }

    auto B = A.cumulativeFold!"a + b".array;

    long mn = B[1..M+1].minElement;
    res -= mn;

    res.writeln;
}