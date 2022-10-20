import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int res, cnt, pre;
    foreach (_; 0 .. N) {
        int A;
        readf("%d\n", A);

        if (A > pre) {
            ++cnt;
        }
        else {
            if (cnt >= K) res += cnt - K + 1;
            cnt = 1;
        }

        pre = A;
    }

    if (cnt >= K) res += cnt - K + 1;

    res.writeln;
}