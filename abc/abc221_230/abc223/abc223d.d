import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto graph = new int[][](N+1);
    auto indegree = new int[](N+1);
    foreach (i; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        graph[A] ~= B;
        ++indegree[B];
    }

    auto heap = new BinaryHeap!(Array!int, "a > b")();
    foreach (i; 1 .. N+1) {
        if (indegree[i] == 0) {
            heap.insert(i);
        }
    }

    auto P = new int[](N);
    int idx;
    while (!heap.empty) {
        int f = heap.front;
        heap.popFront;

        P[idx] = f;
        ++idx;

        foreach (g; graph[f]) {
            --indegree[g];

            if (indegree[g] == 0) {
                heap.insert(g);
            }
        }
    }

    if (idx == N) {
        foreach (i, p; P) {
            if (i == N - 1) {
                writeln(p);
            }
            else {
                write(p, " ");
            }
        }
    }
    else {
        writeln(-1);
    }
}