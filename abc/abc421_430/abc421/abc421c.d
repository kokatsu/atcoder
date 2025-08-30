import std;

void main() {
    long N;
    char[] S;
    readf("%d\n%s\n", N, S);

    long[] A, B;
    foreach (i, s; S) {
        if (s == 'A') {
            A ~= i.to!long;
        }
        else {
            B ~= i.to!long;
        }
    }

    long a, b;
    foreach (i; 0 .. N) {
        a += abs(A[i] - i * 2);
        b += abs(B[i] - i * 2);
    }

    long res = min(a, b);
    res.writeln;
}
