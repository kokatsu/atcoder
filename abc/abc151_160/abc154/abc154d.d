import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto p = readln.chomp.split.to!(int[]);

    int M, S;
    foreach (i, P; p) {
        S += P + 1;
        M = max(M, S);

        if (i >= K - 1)
            S -= p[i - K + 1] + 1;
    }

    real res = M.to!real / 2.0;
    format("%.10f", res).writeln;
}
