import std;

void main() {
    int N, M, A, B;
    readfln("%d %d %d %d", N, M, A, B);

    int D = 1;
    foreach (i; 0 .. M) {
        int c;
        readfln("%d", c);

        if (N <= A) {
            N += B;
        }

        if (N < c) {
            break;
        }

        N -= c;
        ++D;
    }

    string res = D > M ? "complete" : to!string(D);
    res.writeln;
}
