import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long M = A.maxElement + 1;
    auto lpf = M.iota.array;
    foreach (i; 2 .. M) {
        if (lpf[i] != i) continue;

        foreach (j; iota(i*i, M, i)) {
            if (lpf[j] != j) continue;

            lpf[j] = i;
        }
    }

    auto cnts = new long[](M);
    foreach (a; A) {
        long num = a;
        while (num > 1) {
            long p = lpf[num];
            ++cnts[p];

            while (num % p == 0) num /= p;
        }
    }

    bool isPairwise = true;
    foreach (c; cnts) {
        if (c > 1) {
            isPairwise = false;
            break;
        }
    }

    if (isPairwise) {
        writeln("pairwise coprime");
        return;
    }

    long g = A.fold!gcd;
    writeln(g == 1 ? "setwise coprime" : "not coprime");
}