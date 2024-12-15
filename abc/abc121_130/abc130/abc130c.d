import std;

void main() {
    long W, H, x, y;
    readf("%d %d %d %d\n", W, H, x, y);

    real S = to!real(W * H) / 2.0;
    long ways = (x * 2 == W && y * 2 == H ? 1 : 0);

    writefln("%.10f %d", S, ways);
}
