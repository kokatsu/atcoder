import std;

struct Node {
    long to, len;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto edge = new long[][](N);
    foreach (_; 0 .. M) {
        long a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        edge[a] ~= b, edge[b] ~= a;
    }

    auto dists = new long[][](N, 4);
    foreach (i; 0 .. N) {
        bool[long] seen;
        seen[i] = true;

        Node[] que;
        que ~= Node(i, 0);

        while (!que.empty) {
            auto f = que.front;
            que.popFront;


            dists[i][f.len] += f.to + 1;

            if (f.len >= 3) continue;

            foreach (e; edge[f.to]) {
                if (e in seen) continue;

                seen[e] = true;
                que ~= Node(e, f.len+1);
            }
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. 3) {
            dists[i][j+1] += dists[i][j];
        }
    }

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long x, k;
        readf("%d %d\n", x, k);

        long res = dists[x-1][k];
        res.writeln;
    }
}