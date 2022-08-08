import std;

struct Pair {
    int a, b;
}

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[][](N);
    foreach (i; 0 .. N) {
        A[i] = readln.chomp.split.to!(int[]);
        A[i][] -= 1;
    }

    auto pos = new int[](N);
    Pair[] F;
    foreach (i; 0 .. N) {
        int j = A[i][pos[i]];
        if (i > j) continue;

        int k = A[j][pos[j]];
        if (i != k) continue;

        F ~= Pair(i, j);
    }

    int res;
    while (!F.empty) {
        Pair[] G;

        foreach (f; F) {
            int i = f.a, j = f.b;
            ++pos[i], ++pos[j];

            if (pos[i] < N - 1) {
                int k = A[i][pos[i]];
                int l = A[k][pos[k]];
                if (i == l) G ~= Pair(i, k);
            }

            if (pos[j] < N - 1) {
                int k = A[j][pos[j]];
                int l = A[k][pos[k]];
                if (j == l) G ~= Pair(j, k);
            }
        }

        F = G;
        ++res;
    }

    foreach (p; pos) if (p < N - 1) res = -1;

    res.writeln;
}