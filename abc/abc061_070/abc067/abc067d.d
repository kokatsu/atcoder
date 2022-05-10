import std;

void main() {
    int N;
    readf("%d\n", N);

    auto roads = new int[][](N);
    foreach (_; 0 .. N-1) {
        int a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        roads[a] ~= b, roads[b] ~= a;
    }

    int[] f(int x) {
        auto res = new int[](N);
        res[] = int.max;
        res[x] = 0;

        int[] que;
        que ~= x;
        while (!que.empty) {
            int f = que.front;
            que.popFront;

            foreach (r; roads[f]) {
                int t = res[f] + 1;
                if (res[r] <= t) continue;

                res[r] = t;
                que ~= r;
            }
        }

        return res;
    }

    auto distF = f(0), distS = f(N-1);

    int cnt;
    foreach (F, S; zip(distF, distS)) {
        cnt += (F <= S ? 1 : -1);
    }

    writeln(cnt > 0 ? "Fennec" : "Snuke");
}