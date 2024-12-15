import std;

enum long MOD = 10 ^^ 9 + 7;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

void main() {
    long N, a, b;
    readf("%d\n%d %d\n", N, a, b);

    --a, --b;

    long M;
    readf("%d\n", M);

    auto roads = new long[][](N);
    foreach (_; 0 .. M) {
        long x, y;
        readf("%d %d\n", x, y);

        --x, --y;
        roads[x] ~= y, roads[y] ~= x;
    }

    auto cnts = new long[](N), dists = new long[](N);
    cnts[a] = 1;
    dists[] = long.max;
    dists[a] = 0;

    long[] que;
    que ~= a;
    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        if (f == b)
            continue;

        foreach (r; roads[f]) {
            if (dists[r] < dists[f] + 1)
                continue;
            addMod(cnts[r], cnts[f]);

            if (dists[r] == dists[f] + 1)
                continue;
            que ~= r;
            dists[r] = dists[f] + 1;
        }
    }

    long res = cnts[b];
    res.writeln;
}
