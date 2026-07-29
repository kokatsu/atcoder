import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[][] G = new int[][](N + 1);
    foreach (_; 0 .. M) {
        int X, Y;
        readfln("%d %d", X, Y);

        G[Y] ~= X;
    }

    bool[] V = new bool[](N + 1);
    string[] R;

    int Q;
    readfln("%d", Q);

    foreach (_; 0 .. Q) {
        int u, v;
        readfln("%d %d", u, v);

        if (u == 1) {
            if (V[v]) {
                continue;
            }

            V[v] = true;

            DList!int L;
            L.insertBack(v);

            while (!L.empty) {
                int x = L.front;
                L.removeFront;

                foreach (y; G[x]) {
                    if (V[y]) {
                        continue;
                    }

                    V[y] = true;
                    L.insertBack(y);
                }
            }
        }
        else {
            R ~= V[v] ? "Yes" : "No";
        }
    }

    string res = format("%-(%s\n%)", R);
    res.writeln;
}
