import std;

void main() {
    int x, y;
    readfln("%d %d", x, y);

    int k;
    readfln("%d", k);

    int res = y >= k ? x + k : x + y * 2 - k;
    res.writeln;
}
