import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long D = K - (N - 1) * 2;
    writeln(D >= 0 && D % 2 == 0 ? "Yes" : "No");
}