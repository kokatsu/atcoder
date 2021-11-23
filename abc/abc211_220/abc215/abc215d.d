import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    int limit = A.maxElement + 1;
    int lsqrt = limit.to!real.sqrt.floor.to!int;
    auto spf = iota(0, limit).map!(a => a > 0 && a % 2 == 0 ? 2 : a).array;
    foreach (i; iota(3, lsqrt, 2)) {
        if (spf[i] != i) {
            continue;
        }

        foreach (j; iota(i*i, limit, i)) {
            if (spf[j] == j) {
                spf[j] = i;
            }
        }
    }

    auto G = new bool[](M+1);
    G[] = true;
    G[0] = false;

    foreach (a; A) {
        int rem = a;

        while (rem > 1) {
            int p = spf[rem];

            if (p <= M + 1 && G[p]) {
                foreach (i; iota(p, M+1, p)) {
                    G[i] = false;
                }
            }

            rem /= spf[rem];
        }
    }

    auto K = iota(0, M+1).filter!(a => G[a]).array;
    K.length.writeln;
    foreach (k; K) {
        k.writeln;
    }
}