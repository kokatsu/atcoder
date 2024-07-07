import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto list = new bool[][](N, N);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        list[A-1][B-1] = true;
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                if (list[j][k]) continue;
                if (list[j][i] && list[i][k]) list[j][k] = true;
            }
        }
    }

    bool isOk = true;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (i == j) continue;

            if (list[i][j] && list[j][i]) isOk = false;
        }
    }

    string res = isOk ? "Yes" : "No";
    res.writeln;
}