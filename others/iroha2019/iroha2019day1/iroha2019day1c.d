import std;

void main() {
    int N;
    readf("%d\n", N);

    auto res = iota(N-7, N+1).array;
    writefln("%(%s\n%)", res);
}