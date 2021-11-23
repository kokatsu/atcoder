import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    int Q;
    readf("%d\n", Q);

    int swpCnt;
    dchar[][] Sarr = [S[0..N], S[N..2*N]];

    foreach (i; 0 .. Q) {
        int T, A, B;
        readf("%d %d %d\n", T, A, B);

        if (T == 1) {
            --A, --B;

            if (swpCnt % 2 == 1) {
                A = (A + N) % (2 * N);
                B = (B + N) % (2 * N);
            }

            int Ad = A / N, Ar = A % N;
            int Bd = B / N, Br = B % N;

            int Atmp = Sarr[Ad][Ar], Btmp = Sarr[Bd][Br];
            Sarr[Ad][Ar] = Btmp, Sarr[Bd][Br] = Atmp;
        }
        else {
            ++swpCnt;
        }
    }

    dchar[] res = Sarr[swpCnt%2] ~ Sarr[(swpCnt+1)%2];
    res.writeln;
}