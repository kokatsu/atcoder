import std;

enum int L = 5001;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto cumSum = new int[][](L, L);
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        ++cumSum[A][B];
    }

    foreach (i; 0 .. L) {
        foreach (j; 1 .. L) {
            cumSum[i][j] += cumSum[i][j - 1];
        }
    }

    foreach (i; 1 .. L) {
        foreach (j; 0 .. L) {
            cumSum[i][j] += cumSum[i - 1][j];
        }
    }

    int res;
    foreach (i; K + 1 .. L) {
        foreach (j; K + 1 .. L) {
            int num = cumSum[i][j] - cumSum[i][j - K - 1] - cumSum[i - K - 1][j]
                + cumSum[i - K - 1][j - K - 1];
            res = max(res, num);
        }
    }

    res.writeln;
}
