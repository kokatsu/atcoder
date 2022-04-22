import std;

void main() {
    long N;
    readf("%d\n", N);

    auto edge = new long[][](N);
    foreach (_; 0 .. N-1) {
        long u, v;
        readf("%d %d\n", u, v);

        --u, --v;
        edge[u] ~= v, edge[v] ~= u;
    }

    long len;
    auto child = new long[](N);

    long f(long depth, long pos = 0, long pre = -1) {
        len += depth;

        foreach (e; edge[pos]) {
            if (e == pre) continue;

            child[pos] += f(depth+1, e, pos) + 1;
        }

        return child[pos];
    }

    f(0);

    auto dis = new long[](N);

    void g(long num, long pos = 0, long pre = -1) {
        dis[pos] = num;

        foreach (e; edge[pos]) {
            if (e == pre) continue;

            long tmp = num + N - (child[e] + 1) * 2;
            g(tmp, e, pos);
        }
    }

    g(len);

    foreach (d; dis) d.writeln;
}