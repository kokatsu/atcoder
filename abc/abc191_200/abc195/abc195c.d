import std;

void main() {
    long N;
    readf("%d\n", N);

    long B = 1000;
    long L = 1, R = B - 1;

    long res, cnt;
    while (N >= L) {
        if (N > R) {
            res += (R - L + 1) * cnt;
        }
        else {
            res += (N - L + 1) * cnt;
            break;
        }

        L *= B; R = L * B - 1;
        ++cnt;
    }

    res.writeln;
}