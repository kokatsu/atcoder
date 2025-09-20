import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = new int[](N), B = new int[](N), Q;
    int[][] M = new int[][](N);
    bool[] S = new bool[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);

        --A[i], --B[i];

        if (A[i] == -1 && B[i] == -1) {
            Q ~= i;
            S[i] = true;
        }
        else {
            M[A[i]] ~= i;
            M[B[i]] ~= i;
        }
    }

    while (!Q.empty) {
        int f = Q.front;
        Q.popFront;

        foreach (m; M[f]) {
            if (S[m]) {
                continue;
            }

            Q ~= m;
            S[m] = true;
        }
    }

    ulong res = S.count(true);
    res.writeln;
}
