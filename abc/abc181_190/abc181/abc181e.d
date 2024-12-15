import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto H = readln.chomp.split.to!(long[]);
    auto W = readln.chomp.split.to!(long[]);

    H.sort;
    auto A = new long[](N / 2 + 1), B = new long[](N / 2 + 1);
    foreach (i; 1 .. N / 2 + 1) {
        A[i] = A[i - 1] + H[2 * (i - 1) + 1] - H[2 * (i - 1)];
        B[i] = B[i - 1] + H[2 * i] - H[2 * i - 1];
    }

    auto T = H.assumeSorted;

    long res = long.max;
    foreach (w; W) {
        auto len = T.lowerBound(w).length;

        long tmp = A[len / 2] + B[N / 2] - B[len / 2];
        if (len % 2 == 0) {
            tmp += H[len] - w;
        }
        else {
            tmp += w - H[len - 1];
        }

        if (res > tmp) {
            res = tmp;
        }
    }

    res.writeln;
}
