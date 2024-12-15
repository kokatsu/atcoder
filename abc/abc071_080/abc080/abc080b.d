import std;

void main() {
    int N;
    readf("%d\n", N);

    int f, r = N;
    while (r > 0) {
        f += r % 10;
        r /= 10;
    }

    writeln(N % f == 0 ? "Yes" : "No");
}
