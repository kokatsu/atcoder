import std;

void main() {
    int N1, N2, M;
    readf("%d %d %d\n", N1, N2, M);

    int N = N1 + N2;

    auto G = new int[][](N);
    foreach (i; 0 .. M) {
        int a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        G[a] ~= b, G[b] ~= a;
    }

    int[] bfs(int x) {
        int[] d = new int[](N);
        d[] = int.max;
        d[x] = 0;

        int[] heap = [x];
        while (!heap.empty) {
            int f = heap.front;
            heap.popFront;

            foreach (g; G[f]) {
                if (d[g] > d[f] + 1) {
                    d[g] = d[f] + 1;
                    heap ~= g;
                }
            }
        }

        return d;
    }

    int[] D1 = bfs(0), D2 = bfs(N - 1);

    int X = N1 > 1 ? D1[1 .. N1].maxElement : 0;
    int Y = N2 > 1 ? D2[N1 .. N - 1].maxElement : 0;

    int res = X + Y + 1;
    res.writeln;
}
