import std;

void main() {
    int N;
    readf("%d\n", N);

    auto H = readln.chomp.split.to!(int[]);

    int res, r;
    foreach (l; 0 .. N) {
        while (r < N - 1 && H[r] >= H[r+1]) {
            ++r;
        }

        res = max(res, r-l);

        if (l == r) ++r;
    }

    res.writeln;
}