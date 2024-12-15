import std;

struct Edge {
    long to, num;
}

void main() {
    long N;
    readf("%d\n", N);

    auto edges = new Edge[][](N + 1);
    foreach (i; 1 .. N) {
        long U, V;
        readf("%d %d\n", U, V);

        edges[U] ~= Edge(V, i), edges[V] ~= Edge(U, i);
    }

    long f(long pos, long mn = N - 1, long mx = 1, long pre = -1) {
        long ret;
        if (mn > mx)
            ret = (N - 1) * N / 2;
        else
            ret = mn * (N - mx);

        foreach (e; edges[pos]) {
            if (e.to == pre)
                continue;

            long a = min(mn, e.num);
            long b = max(mx, e.num);
            ret += f(e.to, a, b, pos);
        }
        return ret;
    }

    long res = f(1);
    res.writeln;
}
