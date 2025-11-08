import std;

void main() {
    int H, B;
    readf("%d %d\n", H, B);

    int res = max(0, H - B);
    res.writeln;
}
