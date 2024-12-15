import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto roads = new long[][](N, N);
    foreach (_; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;
        roads[A][B] = roads[B][A] = C;
    }

    long res;
    auto seen = new bool[](N);

    void f(long to, long num, ref bool[] arr) {
        arr[to] = true;
        res = max(res, num);
        foreach (i; 0 .. N) {
            if (arr[i] || roads[to][i] == 0)
                continue;
            f(i, num + roads[to][i], arr);
        }
        arr[to] = false;
    }

    foreach (i; 0 .. N)
        f(i, 0, seen);

    res.writeln;
}
