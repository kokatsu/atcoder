import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long L = A[0], R = A[0];
    foreach (i; 1 .. N) {
        if (L < R)
            L = R;
        R = (R + A[i] >= A[i] ? R + A[i] : A[i]);
    }

    long res = max(L, R);
    res.writeln;
}
