import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    long[long] D;
    D[0] = 0;
    foreach (a; A) {
        long R = a, d = 2, s = d ^^ 2;
        while (R >= s) {
            while (R % s == 0) {
                R /= s;
            }
            ++d;
            s = d ^^ 2;
        }
        ++D[R];
    }

    long res;
    foreach (k; D.keys) {
        if (k == 0) {
            res += D[0] * (D[0] - 1) / 2;
            continue;
        }

        res += D[k] * (D[k] - 1) / 2 + D[k] * D[0];
    }

    res.writeln;
}
