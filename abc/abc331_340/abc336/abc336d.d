import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    if (N == 1) {
        N.writeln;
        return;
    }

    long rl;
    auto L = new long[](N);
    foreach (ll; 0 .. N) {
        while (rl < N && A[rl] > rl - ll.to!long) {
            L[rl] = rl - ll.to!long + 1;
            ++rl;
        }

        if (ll == rl) {
            ++rl;
        }
    }

    long lr = N - 1;
    auto R = new long[](N);
    foreach_reverse (rr; 0 .. N) {
        while (lr >= 0 && A[lr] > rr.to!long - lr) {
            R[lr] = rr.to!long - lr + 1;
            --lr;
        }

        if (lr == rr) {
            --lr;
        }
    }

    long res;
    foreach (i; 0 .. N - 1) {
        res = max(res, min(L[i], R[i]));
    }

    res.writeln;
}
