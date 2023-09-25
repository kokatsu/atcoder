import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto T = new int[](N+1), K = new int[](N+1);
    readf("%d\n", T[N]);

    foreach (i; 0 .. N) readf("%d %d\n", T[i], K[i]);

    zip(T, K).sort!((a, b) => a[0] < b[0]);

    int res, time, mood;
    foreach (t, k; zip(T, K)) {
        if (mood >= M) {
            res += t - time;
        }

        time = t, mood += k;
    }

    res.writeln;
}