import std;

enum long L = 2 * 10L ^^ 12;

void main() {
    long A, K;
    readfln("%d %d", A, K);

    long res;
    if (K == 0) {
        res = L - A;
    }
    else {
        while (A < L) {
            A += 1 + K * A;
            ++res;
        }
    }

    res.writeln;
}
