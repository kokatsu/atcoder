import std;

struct Path {
    int to, dist;
}

void main() {
    int n, m, s, t;
    readf("%d %d\n%d %d\n", n, m, s, t);

    --s, --t;

    auto paths = new Path[][](n);
    foreach (_; 0 .. m) {
        int x, y, d;
        readf("%d %d %d\n", x, y, d);

        --x, --y;

        paths[x] ~= Path(y, d), paths[y] ~= Path(x, d);
    }

    int[] dijkstra(int start) {
        auto dist = new int[](n);
        dist[] = int.max;
        dist[start] = 0;

        auto heap = new BinaryHeap!(Array!Path, "a.dist > b.dist")();
        heap.insert(Path(start, 0));
        while (!heap.empty) {
            auto f = heap.front;
            heap.popFront;

            foreach (p; paths[f.to]) {
                if (f.dist + p.dist < dist[p.to]) {
                    dist[p.to] = f.dist + p.dist;
                    heap.insert(Path(p.to, dist[p.to]));
                }
            }
        }

        return dist;
    }

    auto dist1 = dijkstra(s), dist2 = dijkstra(t);
    foreach (i; 0 .. n) {
        if (dist1[i] < int.max && dist1[i] == dist2[i]) {
            writeln(i+1);
            return;
        }
    }

    writeln(-1);
}