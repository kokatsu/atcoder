import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto G = new int[][](N);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        G[A] ~= B;
    }

    int res = -1;
    foreach (i; 0 .. N) {
        auto seen = new bool[](N);
        seen[i] = true;

        auto queue = G[i].dup;
        while (!queue.empty) {
            int f = queue.front;
            queue.popFront;

            seen[f] = true;

            foreach (g; G[f]) {
                if (!seen[g]) {
                    queue ~= g;
                }
            }
        }

        if (seen.all) {
            res = i + 1;
        }
    }

    res.writeln;
}
