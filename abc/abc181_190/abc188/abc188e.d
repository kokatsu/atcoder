import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    auto roads = new long[][](N);
    foreach (_; 0 .. M) {
        long X, Y;
        readf("%d %d\n", X, Y);

        roads[X-1] ~= Y - 1;
    }

    auto B = A.dup;
    auto pos = N.iota.array;
    zip(B, pos).sort;

    long res = long.min;
    auto seen = new bool[](N);
    foreach (p; pos) {
        if (seen[p]) continue;

        long[] que;
        que ~= p;
        while (!que.empty) {
            auto f = que.front;
            que.popFront;

            foreach (r; roads[f]) {
                if (seen[r]) continue;

                res = max(res, A[r]-A[p]);
                seen[r] = true;
                que ~= r;
            }
        }
    }

    res.writeln;
}