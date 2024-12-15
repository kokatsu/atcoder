import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    if (N == M) {
        writeln(0);
        return;
    }

    if (M == 0) {
        writeln(1);
        return;
    }

    A.sort;

    A ~= N + 1;

    long[] list;
    long f, k = long.max;
    foreach (a; A) {
        long tmp = a - f - 1;

        if (tmp > 0) {
            k = min(k, tmp);
            list ~= tmp;
        }

        f = a;
    }

    long res;
    foreach (l; list) {
        res += (l + k - 1) / k;
    }

    res.writeln;
}
