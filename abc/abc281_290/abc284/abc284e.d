import std;

enum long L = 10 ^^ 6;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto edges = new long[][](N);
    foreach (_; 0 .. M) {
        long u, v;
        readf("%d %d\n", u, v);

        --u, --v;
        edges[u] ~= v, edges[v] ~= u;
    }

    auto seen = new bool[](N);

    long f(long pos) {
        long ret = 1;
        seen[pos] = true;
        foreach (edge; edges[pos]) {
            if (seen[edge])
                continue;
            ret += f(edge);
            if (ret >= L)
                break;
        }
        seen[pos] = false;
        return ret;
    }

    long res = min(f(0), L);
    res.writeln;
}
