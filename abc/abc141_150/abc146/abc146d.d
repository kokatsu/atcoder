import std;

struct Edge {
    int to, num;
}

void main() {
    int N;
    readf("%d\n", N);

    auto edge = new Edge[][](N);
    foreach (i; 0 .. N-1) {
        int a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        edge[a] ~= Edge(b, i); edge[b] ~= Edge(a, i);
    }

    int cnt;
    auto colors = new int[](N-1);

    void f(int pos, int pre = -1, int col = -1) {
        int c;
        foreach (e; edge[pos]) {
            if (e.to == pre) continue;

            ++c;
            if (c == col) ++c;

            colors[e.num] = c;
            cnt = max(cnt, c);

            f(e.to, pos, c);
        }
    }

    f(0);

    cnt.writeln;
    foreach (c; colors[0..N-1]) c.writeln;
}