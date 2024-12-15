import std;

enum real EPS = 1e-9;

void main() {
    real N;
    readf("%f\n", N);

    real ok = N, ng = 0.0;
    while (ok - ng > EPS) {
        real mid = (ok + ng) / 2.0;
        (mid ^^ 3 + mid >= N ? ok : ng) = mid;
    }

    writefln("%.10f", ok);
}
