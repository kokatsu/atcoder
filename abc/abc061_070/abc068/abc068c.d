import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] F;
    bool[int] S;
    foreach (_; 0 .. M) {
        int a, b;
        readf("%d %d\n", a, b);

        if (a == 1) {
            F ~= b;
        }

        if (b == N) {
            S[a] = true;
        }
    }

    string res = F.any!(x => x in S) ? "POSSIBLE" : "IMPOSSIBLE";
    res.writeln;
}
