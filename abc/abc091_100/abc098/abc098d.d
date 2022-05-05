import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long res, r, x, y;
    foreach (l; 0 .. N) {
        while (r < N && ((x + A[r]) == (y ^ A[r]))) {
            x += A[r], y ^= A[r];
            ++r;
        }

        res += r - l;

        if (l == r) ++r;
        else x -= A[l], y ^= A[l];
    }

    res.writeln;
}