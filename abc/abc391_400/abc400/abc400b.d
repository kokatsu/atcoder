import std;

enum long L = 10L ^^ 9;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long res, T = 1;
    foreach (i; 0 .. M + 1) {
        res += T;
        if (res > L) {
            writeln("inf");
            return;
        }
        T *= N;
    }

    res.writeln;
}
