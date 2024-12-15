import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto S = new string[](N);
    foreach (i; 0 .. N)
        S[i] = readln.chomp;

    long res;

    long L = 1 << N;
    foreach (i; 1 .. L) {
        auto use = new long[](26);

        foreach (j; 0 .. N) {
            if ((i >> j) & 1) {
                foreach (s; S[j]) {
                    ++use[s - 'a'];
                }
            }
        }

        long cnt;
        foreach (u; use) {
            if (u == K)
                ++cnt;
        }

        res = max(res, cnt);
    }

    res.writeln;
}
