import std;
import core.bitop;

void main() {
    long N;
    readf("%d\n", N);

    N >>= N.bsf;

    while (N % 3 == 0) {
        N /= 3;
    }

    string res = N == 1 ? "Yes" : "No";
    res.writeln;
}
