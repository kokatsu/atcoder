import std;

void main() {
    long N;
    readf("%d\n", N);

    long CB = N.to!real
        .cbrt
        .floor
        .to!long;

    long res;
    foreach (a; 1 .. CB + 1) {
        if (N % a != 0) {
            continue;
        }

        long D = N / a;

        foreach (b; a .. D + 1) {
            if (b > (D / b)) {
                break;
            }

            if (D % b == 0) {
                ++res;
            }
        }
    }

    res.writeln;
}
