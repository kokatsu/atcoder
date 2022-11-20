import std;

void main() {
    int H, W, h, w;
    readf("%d %d\n%d %d\n", H, W, h, w);

    int res = H * W - h * W - H * w + h * w;
    res.writeln;
}