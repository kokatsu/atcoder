import std;

void main() {
    int N;
    readf("%d\n", N);

    auto path = new int[][](N+1);
    foreach (i; 0 .. N-1) {
        int A, B;
        readf("%d %d\n", A, B);

        path[A] ~= B;
        path[B] ~= A;
    }

    foreach (i; 1 .. N+1) {
        path[i].sort;
    }

    int[] res;
    void dfs(int pos, int prev) {
        res ~= pos;
        foreach (p; path[pos]) {
            if (p == prev) {
                continue;
            }

            dfs(p, pos);
            res ~= pos;
        }
    }

    dfs(1, 0);

    foreach (i; 0 .. res.length) {
        if (i == res.length - 1) {
            writeln(res[i]);
        }
        else {
            write(res[i], " ");
        }
    }
}