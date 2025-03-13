import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto b = new bool[][](N, N);
    foreach (i; 0 .. M) {
        auto a = readln.chomp.split.to!(int[]);
        a[] -= 1;

        foreach (j; 0 .. N) {
            if (j > 0) {
                b[a[j - 1]][a[j]] = true;
                b[a[j]][a[j - 1]] = true;
            }

            if (j < N - 1) {
                b[a[j]][a[j + 1]] = true;
                b[a[j + 1]][a[j]] = true;
            }
        }
    }

    int res;
    foreach (i; 0 .. N) {
        foreach (j; i + 1 .. N) {
            if (!b[i][j]) {
                res++;
            }
        }
    }

    res.writeln;
}
