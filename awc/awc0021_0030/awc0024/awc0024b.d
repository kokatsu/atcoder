import std;

void main() {
    int N, M, K;
    readfln("%d %d %d", N, M, K);

    bool[] X = new bool[](N);
    X[0 .. K] = true;

    foreach (_; 0 .. M) {
        int A, B;
        readfln("%d %d", A, B);

        --A, --B;

        if (X[A] || X[B]) {
            X[A] = X[B] = true;
        }
    }

    auto res = X.count(true);
    res.writeln;
}
