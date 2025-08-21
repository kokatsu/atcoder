import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    long[] D = readln.chomp.split.to!(long[]);

    long S = A + B;
    long[] M = D.map!(d => d % S).array;

    M.sort;

    long[] U = M.uniq.array;
    long L = U.length.to!long;

    bool ok;
    foreach (i; 0 .. L) {
        long l = U[i], u = U[(L + i - 1) % L];
        if (l <= u) {
            ok |= u - l < A;
        }
        else {
            ok |= S - l + u < A;
        }
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
