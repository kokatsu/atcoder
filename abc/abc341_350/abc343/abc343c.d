import std;

enum long L = 10L ^^ 6 + 1;

void main() {
    long N;
    readf("%d\n", N);

    long res;
    foreach (i; 1 .. L) {
        if (i % 10 == 0) {
            continue;
        }

        long k = i ^^ 3;
        if (k > N) {
            break;
        }

        long j, r = k;
        while (r > 0) {
            j = j * 10 + r % 10;
            r /= 10;
        }

        if (j == k) {
            res = k;
        }
    }

    res.writeln;
}
