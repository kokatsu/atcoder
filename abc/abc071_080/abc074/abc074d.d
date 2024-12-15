import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new long[][](N);
    foreach (i; 0 .. N)
        A[i] = readln.chomp.split.to!(long[]);

    auto ign = new bool[][](N, N);
    foreach (i; 0 .. N - 1) {
        foreach (j; i + 1 .. N) {
            long C = A[i][j];

            foreach (k; 0 .. N) {
                if (k == i || k == j)
                    continue;

                long D = A[i][k] + A[k][j];
                if (C > D) {
                    writeln(-1);
                    return;
                }
                else if (C == D) {
                    ign[i][j] = true;
                }
            }
        }
    }

    long res;
    foreach (i; 0 .. N - 1) {
        foreach (j; i + 1 .. N) {
            if (ign[i][j])
                continue;

            res += A[i][j];
        }
    }

    res.writeln;
}
