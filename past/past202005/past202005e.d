import std;

void main() {
    int N, M, Q;
    readf("%d %d %d\n", N, M, Q);

    auto graph = new int[][](N);
    foreach (_; 0 .. M) {
        int u, v;
        readf("%d %d\n", u, v);

        --u, --v;

        graph[u] ~= v, graph[v] ~= u;
    }

    auto c = readln.chomp.split.to!(int[]);

    foreach (_; 0 .. Q) {
        auto s = readln.chomp.split.to!(int[]);

        int x = s[1] - 1;
        c[x].writeln;

        if (s[0] == 1) {
            foreach (g; graph[x]) {
                c[g] = c[x];
            }
        }
        else {
            c[x] = s[2];
        }
    }
}
