import std;

enum long L = 10, R = 10 ^^ 4 + 1;

void main() {
    long A;
    readf("%d\n", A);

    foreach (i; L .. R) {
        long num, rem = i, base = 1;
        while (rem > 0) {
            long d = rem % 10;
            num += d * base;
            rem /= 10, base *= i;
        }

        if (num == A) {
            i.writeln;
            return;
        }
    }

    writeln(-1);
}
