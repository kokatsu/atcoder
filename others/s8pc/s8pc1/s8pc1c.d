import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto D = new long[](N);
    foreach (i; 0 .. N)
        readf("%d\n", D[i]);

    auto roads = new long[][](N);
    foreach (_; 0 .. K) {
        long X, Y;
        readf("%d %d\n", X, Y);

        --X, --Y;

        roads[X] ~= Y, roads[Y] ~= X;
    }

    long res;

    void f(long x) {
        auto seen = new bool[](N);

        void g(long pos, long num = 0) {
            seen[pos] = true;
            num += D[pos];
            res = max(res, num);

            foreach (r; roads[pos]) {
                if (seen[r])
                    continue;

                g(r, num);
            }

            seen[pos] = false;
        }

        g(x);
    }

    foreach (i; 0 .. N)
        f(i);

    res.writeln;
}
