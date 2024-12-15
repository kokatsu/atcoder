import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int lim = int.max / 2;
    auto times = new int[][](N, N);
    foreach (i; 0 .. N) {
        times[i][] = lim;
        times[i][i] = 0;
    }

    foreach (_; 0 .. M) {
        int a, b, t;
        readf("%d %d %d\n", a, b, t);

        --a, --b;
        times[a][b] = times[b][a] = t;
    }

    void f(ref int x, int y) {
        x = min(x, y);
    }

    void g(ref int x, int y) {
        x = max(x, y);
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                f(times[j][k], times[j][i] + times[i][k]);
            }
        }
    }

    int res = lim;
    foreach (i; 0 .. N) {
        int num;

        foreach (j; 0 .. N) {
            g(num, times[i][j]);
        }

        f(res, num);
    }

    res.writeln;
}
