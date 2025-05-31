import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto imos = new int[N + 1];
    foreach (_; 0 .. M) {
        int L, R;
        readf("%d %d\n", L, R);

        ++imos[L - 1], --imos[R];
    }

    foreach (i; 0 .. N) {
        imos[i + 1] += imos[i];
    }

    int res = imos[0 .. N].minElement;
    res.writeln;
}
