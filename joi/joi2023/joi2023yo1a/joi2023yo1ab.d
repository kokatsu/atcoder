import std;

void main() {
    int N;
    readf("%d\n", N);

    int a = N / 10, b = N % 10;

    string res = format("%b", a == b);
    res.writeln;
}