import std;

void main() {
    long N, A, B, C, D;
    real X;
    readf("%d\n%d %d %d %d\n%f\n", N, A, B, C, D, X);

    real s = A * 1.0 + B * 2.0 + C * 3.0 + D * 4.0;
    long t = A + B + C + D;
    real p = s / t;

    if (p <= X) {
        writeln(0);
        return;
    }

    long ok = long.max / 2, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        real u = s + mid * 1.0;
        long v = t + mid;
        real q = u / v;

        (q <= X ? ok : ng) = mid;
    }

    ok.writeln;
}