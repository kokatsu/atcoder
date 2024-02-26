import std;

enum int G = 2019;

void main() {
    int N;
    readf("%d\n", N);

    auto X = readln.chomp.split.to!(int[]);

    int M;
    readf("%d\n", M);

    auto A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    foreach (a; A) {
        if (a == N - 1) {
            if (X[a] < G) ++X[a];
        }
        else if (X[a] + 1 < X[a+1]) {
            ++X[a];
        }
    }

    writefln("%(%s\n%)", X);
}