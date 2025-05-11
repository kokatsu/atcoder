import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto M = new long[][](N + 1);
    foreach (i, a; A) {
        M[a] ~= i.to!long + 1;
    }

    long res;
    foreach (i; 1 .. N + 1) {
        auto L = M[i].length.to!long;

        if (L < 2) {
            continue;
        }

        long H = L / 2;
        long c = L - 1;
        foreach (j; 0 .. H) {
            res += (M[i][L - j - 1] - M[i][j]) * c;
            c -= 2;
        }

        res -= (L - 1) * L * (L + 1) / 6;
    }

    res.writeln;
}
