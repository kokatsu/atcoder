import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto road = new int[][](N);
    foreach (_; 0 .. N-1) {
        int a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        road[a] ~= b, road[b] ~= a;
    }

    auto list = new bool[](N);

    void f(int now, int pre = -1, bool flag = false) {
        list[now] = flag;

        foreach (r; road[now]) {
            if (r == pre) continue;

            f(r, now, !flag);
        }
    }

    f(0);

    foreach (_; 0 .. Q) {
        int c, d;
        readf("%d %d\n", c, d);

        --c, --d;
        writeln(list[c] == list[d] ? "Town" : "Road");
    }
}