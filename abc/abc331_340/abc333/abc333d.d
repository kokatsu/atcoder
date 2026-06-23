import std;

struct Node {
    int v, c;
}

void main() {
    int N;
    readfln("%d", N);

    int[][] G = new int[][](N + 1);
    int[] C = new int[](N + 1);
    foreach (i; 0 .. N - 1) {
        int u, v;
        readfln("%d %d", u, v);

        G[u] ~= v, G[v] ~= u;
        ++C[u], ++C[v];
    }

    int[] S = new int[](N + 1);
    S[] = 1;
    auto heap = new BinaryHeap!(Array!Node, (a, b) => a.c > b.c);
    foreach (i; 1 .. N + 1) {
        if (C[i] == 1) {
            heap.insert(Node(i, 1));
        }
    }

    bool ok = true;
    while (!heap.empty && ok) {
        Node f = heap.front;
        heap.removeFront;

        --C[f.v];

        foreach (v; G[f.v]) {
            if (C[v] == 0) {
                continue;
            }

            --C[v];
            S[v] += S[f.v];
            if (C[v] == 1) {
                if (v == 1) {
                    ok = false;
                    break;
                }
                heap.insert(Node(v, S[v]));
            }
        }
    }

    int res = S[1];
    res.writeln;
}
