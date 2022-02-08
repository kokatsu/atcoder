import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto edge = new int[][](N);
    foreach (_; 0 .. N-1) {
        int a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        edge[a] ~= b, edge[b] ~= a;
    }

    auto dp = new int[](N);
    foreach (_; 0 .. Q) {
        int p, x;
        readf("%d %d\n", p, x);

        --p;
        dp[p] += x;
    }

    void f(int pos, int pre = -1) {
        foreach (e; edge[pos]) {
            if (e == pre) continue;

            dp[e] += dp[pos];
            f(e, pos);
        }
    }

    f(0);

    writefln("%(%s %)", dp);
}