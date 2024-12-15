import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = new long[](N + 1), b = new long[](N + 1);
    auto edges = new long[][](N + 1);
    foreach (i; 1 .. N) {
        readf("%d %d\n", a[i], b[i]);

        edges[a[i]] ~= b[i], edges[b[i]] ~= a[i];
    }

    auto dists = new long[](N + 1);

    void dfs(void delegate(ref long[], long, long) f, ref long[] arr, long x, long y = -1) {
        foreach (e; edges[x]) {
            if (e == y)
                continue;

            f(arr, x, e);
            dfs(f, arr, e, x);
        }
    }

    void f(ref long[] arr, long x, long y) {
        arr[y] = arr[x] + 1;
    }

    dfs(toDelegate(&f), dists, 1);

    auto nums = new long[](N + 1);

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long t, e, x;
        readf("%d %d %d\n", t, e, x);

        long u = a[e], v = b[e];
        if (dists[u] > dists[v]) {
            swap(u, v);
            t = 3 - t;
        }

        if (t == 1)
            nums[1] += x, nums[v] -= x;
        else
            nums[v] += x;
    }

    void g(ref long[] arr, long x, long y) {
        arr[y] += arr[x];
    }

    dfs(toDelegate(&g), nums, 1);

    writefln("%(%s\n%)", nums[1 .. N + 1]);
}
