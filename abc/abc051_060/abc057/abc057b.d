import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto a = new int[](N), b = new int[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", a[i], b[i]);

    auto c = new int[](M), d = new int[](M);
    foreach (i; 0 .. M)
        readf("%d %d\n", c[i], d[i]);

    foreach (i; 0 .. N) {
        int res, dist = int.max;

        foreach (j; 0 .. M) {
            int m = abs(a[i] - c[j]) + abs(b[i] - d[j]);
            if (m < dist) {
                res = j + 1, dist = m;
            }
        }

        res.writeln;
    }
}
