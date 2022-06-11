import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    auto X = new real[](N), Y = new real[](N);
    foreach (i; 0 .. N) readf("%f %f\n", X[i], Y[i]);

    A[] -= 1;

    real EPS = 1e-10;
    real ok = 1e10, ng = 0.0;
    while (ok - ng > EPS) {
        auto light = new bool[](N);

        real mid = (ok + ng) / 2.0;
        foreach (a; A) {
            light[a] = true;
            foreach (i; 0 .. N) {
                if (light[i]) continue;

                real d = hypot(X[i]-X[a], Y[i]-Y[a]);
                if (d <= mid) light[i] = true;
            }
        }

        (light.all ? ok : ng) = mid;
    }

    writefln("%.10f", ok);
}