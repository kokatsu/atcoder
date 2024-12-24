import std;

void main() {
    int A, B, K;
    readf("%d %d %d\n", A, B, K);

    bool[int] D;
    foreach (i; 0 .. K) {
        if (A + i <= B) {
            D[A + i] = true;
        }

        if (B - i >= A) {
            D[B - i] = true;
        }
    }

    auto res = D.keys;

    res.sort;

    writefln("%(%d\n%)", res);
}
