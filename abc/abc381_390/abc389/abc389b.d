import std;

void main() {
    long N;
    readf("%d\n", N);

    long res = 1;
    while (N > 1) {
        N /= ++res;
    }

    res.writeln;
}
