import std;

void main() {
    ulong N, K;
    readf("%d %d\n", N, K);

    ulong M = 10 ^^ 9 + 7;

    auto cnts = new ulong[](K + 1);
    foreach_reverse (i; 1 .. K + 1) {
        cnts[i] = powmod(K / i, N, M);

        foreach (j; iota(i * 2, K + 1, i)) {
            if (cnts[i] < cnts[j])
                cnts[i] += M;
            cnts[i] -= cnts[j];
        }
    }

    ulong res;
    foreach (i; 1 .. K + 1) {
        res = (res + cnts[i] * i) % M;
    }

    res.writeln;
}
