import std;

void main() {
    int K;
    readf("%d\n", K);

    int D = K / 60, R = K % 60;
    int H = 21 + D, M = R;

    writefln("%02d:%02d", H, M);
}
