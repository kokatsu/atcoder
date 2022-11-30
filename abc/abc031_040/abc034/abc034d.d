import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto w = new real[](N), p = new real[](N);
    foreach (i; 0 .. N) readf("%f %f\n", w[i], p[i]);

    bool f(real x) {
        auto list = new real[](N);
        foreach (i; 0 .. N) {
            list[i] = w[i] * (p[i] - x);
        }

        list.sort!"a > b";
        return list[0..K].sum >= 0.0;
    }

    real ok = 0.0, ng = 100.0, eps = 1e-9;
    while (ng - ok > eps) {
        real mid = (ok + ng) / 2.0;
        (f(mid) ? ok : ng) = mid;
    }

    writefln("%.10f", ok);
}