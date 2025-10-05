import std;

void main() {
    long N, T;
    dchar[] S;
    readf("%d %d\n%s\n", N, T, S);

    long[] X = readln.chomp.split.to!(long[]);

    long[] P, M;
    foreach (s, x; zip(S, X)) {
        if (s == '1') {
            P ~= x;
        }
        else {
            M ~= x;
        }
    }

    P.sort;
    M.sort;

    size_t C = P.length;

    long res, l, r;
    foreach (m; M) {
        while (l < C && P[l] < m - T * 2) {
            ++l;
        }

        while (r < C && P[r] < m) {
            ++r;
        }

        res += r - l;
    }

    res.writeln;
}
