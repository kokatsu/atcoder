import std;

void main() {
    int H, W;
    readfln("%d %d", H, W);

    int res = (H - 1) * W + H * (W - 1);
    res.writeln;
}
