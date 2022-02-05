import std;

void main() {
    long N;
    readf("%d\n", N);

    long M = 998244353;

    long f(long x) {
        if (x % 2 == 0) {
            return ((x / 2) % M) * ((x + 1) % M) % M;
        }
        return ((x % M) * ((x + 1) / 2) % M) % M;
    }

    long res;
    foreach (i; 1 .. 20) {
        long num = (10L ^^ i) - 1;

        if (num >= N) {
            long diff = N - 10L ^^ (i - 1) + 1;
            diff %= M;

            res = (res + f(diff)) % M;
            break;
        }
        else {
            long n = 9 * 10L ^^ (i - 1);
            res = (res + f(n)) % M;
        }
    }

    res.writeln;
}