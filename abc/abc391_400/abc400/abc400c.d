import std;

void main() {
    long N;
    readfln("%d", N);

    long res;
    foreach (i; 0 .. 64) {
        N /= 2;

        if (N == 0) {
            break;
        }

        res += (N.to!real
                .sqrt
                .floor
                .to!long + 1) / 2;
    }

    res.writeln;
}
