import std;

struct Node {
    long to;
    long cost;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto path = new Node[][](N + 1);
    foreach (i; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        path[A] ~= Node(B, C);
        path[B] ~= Node(A, C);
    }

    void Dijkstra(ref long[] time, long start) {
        time[start] = 0;

        auto heap = new BinaryHeap!(Array!Node, "a.cost > b.cost")();
        foreach (p; path[start]) {
            heap.insert(p);
        }

        while (!heap.empty) {
            Node f = heap.front;
            heap.popFront;

            if (time[f.to] > f.cost) {
                time[f.to] = f.cost;

                foreach (p; path[f.to]) {
                    heap.insert(Node(p.to, p.cost + time[f.to]));
                }
            }
        }
    }

    auto first = new long[](N + 1);
    first[] = long.max;
    auto second = first.dup;

    Dijkstra(first, 1);
    Dijkstra(second, N);

    foreach (i; 1 .. N + 1) {
        writeln(first[i] + second[i]);
    }
}
