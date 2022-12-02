import std;

void main() {
    int N;
    readf("%d\n", N);

    int rem = N, f;
    while (rem > 0) {
        f += rem % 10;
        rem /= 10;
    }

    writeln(N % f == 0 ? "Yes" : "No");
}