import std;

void main() {
    int K;
    readf("%d\n", K);

    long A, B;
    readf("%d %d\n", A, B);

    long C;
    long X = 1;
    while (A > 0) {
        int d = A % 10;
        C += X * d;
        A /= 10;
        X *= K;
    }

    long D;
    X = 1;
    while (B > 0) {
        int d = B % 10;
        D += X * d;
        B /= 10;
        X *= K;
    }

    writeln(C * D);
}