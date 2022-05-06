import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long res, r;
    foreach (l; 0 .. N) {
        while (r < N - 1 && A[r] < A[r+1]) {
            ++r;
        }

        res += r - l + 1;

        if (l == r) ++r;
    }

    res.writeln;
}