import std;

enum int D = 10 ^^ 3;

void main() {
    int N;
    readf("%d\n", N);

    writeln(N < D ? "ABC" : "ABD");
}
