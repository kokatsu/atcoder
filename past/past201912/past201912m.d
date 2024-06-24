import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new real[](N), B = new real[](N);
    foreach (i; 0 .. N) readf("%f %f\n", A[i], B[i]);

    auto C = new real[](M), D = new real[](M);
    foreach (i; 0 .. M) readf("%f %f\n", C[i], D[i]);

    real ok = 0.0, ng = 1e6;
    foreach (_; 0 .. 100) {
        real mid = (ok + ng) / 2;

        auto monsters = new real[](N), helpers = new real[](M);
        foreach (i; 0 .. N) monsters[i] = B[i] - A[i] * mid;
        foreach (i; 0 .. M) helpers[i] = D[i] - C[i] * mid;

        monsters.sort!"a > b", helpers.sort!"a > b";

        real T = monsters[0..4].sum;

        (T + max(monsters[4], helpers[0]) >= 0.0 ? ok : ng) = mid;
    }

    writefln("%.10f", ok);
}