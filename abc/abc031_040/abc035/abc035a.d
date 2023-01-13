import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int g = gcd(H, W);

    H /= g, W /= g;

    writefln("%d:%d", H, W);
}