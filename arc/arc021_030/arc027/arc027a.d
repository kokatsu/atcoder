import std;

void main() {
    int h, m;
    readfln("%d %d", h, m);

    int res = (18 - h) * 60 - m;
    res.writeln;
}
