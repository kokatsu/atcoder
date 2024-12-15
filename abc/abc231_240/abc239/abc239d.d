import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    int M = 200;
    int S = M.to!real
        .sqrt
        .floor
        .to!int;
    auto sieve = iota(0, M + 1).map!(i => i == 2 || (i > 2 && i % 2 == 1)).array;
    foreach (i; iota(3, S + 1, 2)) {
        if (!sieve[i]) {
            continue;
        }

        foreach (j; iota(i * i, M + 1, i)) {
            sieve[j] = false;
        }
    }

    bool TakahashiWin;
    foreach (i; A .. B + 1) {
        bool isPrime;
        foreach (j; C .. D + 1) {
            if (sieve[i + j])
                isPrime = true;
        }

        if (!isPrime)
            TakahashiWin = true;
    }

    writeln(TakahashiWin ? "Takahashi" : "Aoki");
}
