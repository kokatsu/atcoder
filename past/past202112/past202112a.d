import std;

void main() {
    int H, W, h, w;
    readf("%d %d\n%d %d\n", H, W, h, w);

    string res = (h >= H && w <= W) ? "Yes" : "No";
    res.writeln;
}
