import std;

void main() {
    int N;
    readfln("%d", N);

    int D = N / 10, R = N % 10;

    int res = D * 100 + min(100, R * 15);
    res.writeln;
}
