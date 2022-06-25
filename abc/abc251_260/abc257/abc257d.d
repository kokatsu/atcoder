import std;

struct Edge {
    long to, num;
}

void main() {
    int N;
    readf("%d\n", N);

    auto x = new long[](N), y = new long[](N), P = new long[](N);
    foreach (i; 0 .. N) readf("%d %d %d\n", x[i], y[i], P[i]);

    auto mat = new long[][](N, N);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (i == j) continue;

            long xdiff = abs(x[i] - x[j]);
            long ydiff = abs(y[i] - y[j]);

            mat[i][j] = (xdiff + ydiff + P[i] - 1) / P[i];
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                mat[j][k] = min(mat[j][k], mat[j][i]+mat[i][k]);
            }
        }
    }

    long res = long.max;

    void f(long x) {
        auto arr = new long[](N);
        arr[] = long.max / 2;
        arr[x] = 0;

        auto heap = new BinaryHeap!(Array!Edge, "a.num > b.num")();
        heap.insert(Edge(x, 0));
        while (!heap.empty) {
            auto f = heap.front;
            heap.popFront;

            foreach (i; 0 .. N) {
                if (i == f.to) continue;

                long t = max(f.num, mat[f.to][i]);
                if (arr[i] > t) {
                    arr[i] = t;
                    heap.insert(Edge(i, t));
                }
            }
        }

        res = min(res, arr.maxElement);
    }

    foreach (i; 0 .. N) f(i);

    res.writeln;
}