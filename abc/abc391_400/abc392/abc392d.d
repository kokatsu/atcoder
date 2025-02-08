import std;

void main() {
    long N;
    readf("%d\n", N);

    auto K = new long[](N);
    auto A = new long[][](N);
    foreach (i; 0 .. N) {
        auto T = readln.chomp.split.to!(long[]);
        K[i] = T[0];
        A[i] = T[1 .. $];
    }

    auto B = new long[long][](N);
    foreach (i; 0 .. N) {
        A[i].sort;
        auto G = A[i].group.array;
        foreach (g; G) {
            B[i][g[0]] = g[1].to!long;
        }
    }

    auto C = N.iota.array;
    zip(B, C).sort!((a, b) => a[0].length < b[0].length);

    real res = 0.0;
    foreach (i; 0 .. N - 1) {
        foreach (j; i + 1 .. N) {
            long D, R = K[C[i]] * K[C[j]];
            foreach (key, val; B[i]) {
                if (key in B[j]) {
                    D += val * B[j][key];
                }
            }
            res = max(res, D.to!real / R);
        }
    }

    writefln("%.15f", res);
}
