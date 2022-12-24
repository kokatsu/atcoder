import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = (N % 2 == 0 ? N : N * 2);
    res.writeln;
}