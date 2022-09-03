import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    long now, dec;
    foreach (i; 0 .. M) {
        now += (i + 1) * A[i];
        dec += A[i];
    }

    long res = now;
    foreach (i; M .. N) {
        now += M * A[i] - dec;
        res = max(res, now);

        dec += A[i] - A[i-M];
    }

    res.writeln;
}