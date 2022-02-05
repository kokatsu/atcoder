import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto path = new long[][](N+1);
    foreach (i; 0 .. M) {
        long A, B;
        readf("%d %d\n", A, B);

        path[A] ~= B;
        path[B] ~= A;
    }

    long MOD = 10 ^^ 9 + 7;

    auto times = new long[](N+1);
    times[] = long.max;
    times[1] = 0;

    auto cnts = new long[](N+1);
    cnts[1] = 1;

    long[] que = [1];
    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        foreach (p; path[f]) {
            if (times[p] == times[f] + 1) {
                cnts[p] = (cnts[p] + cnts[f]) % MOD;
            }
            else if (times[p] > times[f] + 1) {
                times[p] = times[f] + 1;
                cnts[p] = cnts[f];
                que ~= p;
            }
        }
    }

    cnts[N].writeln;
}