import std;

void main() {
    int N;
    readf("%d\n", N);

    int P = 8, L = 206;
    int M = N * (100 + P) / 100;

    string res = "so-so";
    if (M < L) res = "Yay!";
    if (M > L) res = ":(";

    res.writeln;
}