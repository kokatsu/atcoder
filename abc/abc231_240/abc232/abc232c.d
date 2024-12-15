import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto P = new bool[][](N, N);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        P[A][B] = P[B][A] = true;
    }

    auto Q = new bool[][](N, N);
    foreach (_; 0 .. M) {
        int C, D;
        readf("%d %d\n", C, D);

        --C, --D;
        Q[C][D] = Q[D][C] = true;
    }

    bool isOK;
    auto arr = iota(N).array;
    do {
        bool flag = true;
        foreach (i; 0 .. N) {
            foreach (j; 0 .. N) {
                if (P[i][j] != Q[arr[i]][arr[j]]) {
                    flag = false;
                    break;
                }
            }
        }

        if (flag) {
            isOK = true;
        }
    }
    while (arr.nextPermutation);

    writeln(isOK ? "Yes" : "No");
}
