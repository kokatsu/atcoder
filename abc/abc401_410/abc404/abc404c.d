import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto G = new int[][](N);
    foreach (i; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        G[A] ~= B, G[B] ~= A;
    }

    bool ok;
    if (M == N) {
        bool isCyclic = true;
        int pos, prev = -1;
        auto visited = new bool[](N);
        foreach (_; 0 .. M) {
            if (G[pos].length != 2) {
                isCyclic = false;
                break;
            }

            if (visited[pos]) {
                isCyclic = false;
                break;
            }

            visited[pos] = true;

            int next;
            if (prev == G[pos][0]) {
                next = G[pos][1];
            }
            else {
                next = G[pos][0];
            }

            prev = pos;
            pos = next;
        }

        ok = isCyclic;
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
