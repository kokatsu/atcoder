import std;

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long[] A = readln.chomp.split.to!(long[]);

    A.sort;

    auto G = A.group.array;
    G.sort!((a, b) => a[0] * a[1] > b[0] * b[1]);

    long res = A.sum;
    foreach (i, g; G) {
        if (i >= K) {
            break;
        }

        res -= g[0] * g[1];
    }

    res.writeln;
}
