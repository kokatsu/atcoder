import std;

void main() {
    long N;
    readf("%d\n", N);

    dchar[] res;
    while (N > 0) {
        if (N % 2 == 1) {
            --N;
            res ~= 'A';
        }
        else {
            N /= 2;
            res ~= 'B';
        }
    }

    res.reverse;
    res.writeln;
}
