import std;

void main() {
    long N;
    readf("%d\n", N);

    long sx, sy, tx, ty;
    readf("%d %d %d %d\n", sx, sy, tx, ty);

    auto x = new long[](N), y = new long[](N), r = new long[](N);
    foreach (i; 0 .. N) readf("%d %d %d\n", x[i], y[i], r[i]);

    auto S = new bool[](N);
    foreach (i; 0 .. N) {
        long u = sx - x[i], v = sy - y[i];
        if (u * u + v * v == r[i] * r[i]) S[i] = true;
    }

    auto T = new bool[](N);
    foreach (i; 0 .. N) {
        long u = tx - x[i], v = ty - y[i];
        if (u * u + v * v == r[i] * r[i]) T[i] = true;
    }

    auto C = new long[][](N);
    foreach (i; 0 .. N-1) {
        foreach (j; i+1 .. N) {
            long dx = x[i] - x[j], dy = y[i] - y[j];
            long d = dx * dx + dy * dy;

            long a = r[i] + r[j];
            long b = r[i] - r[j];

            if (b * b <= d && d <= a * a) {
                C[i] ~= j, C[j] ~= i;
            }
        }
    }

    auto seen = new bool[](N);

    void f(long p) {
        auto used = new bool[](N);

        long[] que;
        que ~= p;
        used[p] = true;

        while (!que.empty) {
            auto f = que.front;
            que.popFront;

            foreach (c; C[f]) {
                if (used[c]) continue;

                que ~= c;
                used[c] = true;
            }
        }

        foreach (i; 0 .. N) seen[i] |= used[i];
    }

    foreach (i; 0 .. N) {
        if (seen[i]) continue;
        if (!S[i]) continue;
        f(i);
    }

    bool isOK;
    foreach (i; 0 .. N) {
        if (T[i] && seen[i]) isOK = true;
    }

    writeln(isOK ? "Yes" : "No");
}