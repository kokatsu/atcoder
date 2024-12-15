import std;

enum int H = 3600, M = 60;

void main() {
    int N;
    readf("%d\n", N);

    int h = N / H, m = (N % H) / M, s = N % M;
    writefln("%02d:%02d:%02d", h, m, s);
}
