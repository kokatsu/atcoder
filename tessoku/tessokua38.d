import std;

void main() {
    int D, N;
    readf("%d %d\n", D, N);

    auto W = new int[](D);
    W[] = 24;

    foreach (_; 0 .. N) {
        int L, R, H;
        readf("%d %d %d\n", L, R, H);

        --L, --R;
        foreach (i; L .. R + 1) {
            W[i] = min(W[i], H);
        }
    }

    int res = W.sum;
    res.writeln;
}
