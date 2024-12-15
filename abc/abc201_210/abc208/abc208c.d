import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(long[]);

    auto b = iota(0, N).array;
    auto c = b.dup;

    zip(a, b).sort;
    zip(b, c).sort;

    long d = K / N, r = K % N;

    foreach (i; 0 .. N) {
        long res = d;
        if (c[i] < r) {
            ++res;
        }

        res.writeln;
    }
}
