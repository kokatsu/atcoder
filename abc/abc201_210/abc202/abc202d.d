import std;

void main() {
    long A, B, K;
    readf("%d %d %d\n", A, B, K);

    --K;
    long N = A + B;

    auto table = new long[][](N + 1, N + 1);
    table[0][0] = 1;
    foreach (i; 1 .. N + 1) {
        table[i][0] = 1;

        foreach (j; 1 .. i + 1) {
            table[i][j] = table[i - 1][j - 1] + table[i - 1][j];
        }
    }

    dchar[] res;
    while (N > 0) {
        --N;

        if (A > 0) {
            long C = table[N][B];

            if (K < C) {
                res ~= 'a';
                --A;
            }
            else {
                K -= C;
                res ~= 'b';
                --B;
            }
        }
        else {
            res ~= 'b';
            --B;
        }
    }

    res.writeln;
}
