import std;

void main() {
    long N, M, L, S, T;
    readfln("%d %d %d %d %d", N, M, L, S, T);

    Tuple!(long, long)[][] edges = new Tuple!(long, long)[][](N);
    foreach (_; 0 .. M) {
        long U, V, C;
        readfln("%d %d %d", U, V, C);

        --U, --V;

        edges[U] ~= tuple(V, C);
    }

    bool[] B = new bool[](N);

    void dfs(long x, long y, long z) {
        if (y == L) {
            if (S <= z && z <= T) {
                B[x] = true;
            }
            return;
        }

        foreach (edge; edges[x]) {
            dfs(edge[0], y + 1, z + edge[1]);
        }
    }

    dfs(0, 0, 0);

    auto R = N.iota
        .filter!(i => B[i])
        .map!(i => i + 1)
        .array;

    string res = format("%(%d %)", R);
    res.writeln;
}
