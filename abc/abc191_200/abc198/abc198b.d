import std;

void main() {
    int N;
    readf("%d\n", N);

    while (N > 0 && N % 10 == 0) N /= 10;

    int M, t = N;
    while (t > 0) {
        M = M * 10 + t % 10;
        t /= 10;
    }

    writeln(N == M ? "Yes" : "No");
}