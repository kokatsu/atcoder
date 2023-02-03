import std;

void main() {
    int res;

    foreach (_; 0 .. 3) {
        int s, e;
        readf("%d %d\n", s, e);

        res += s * e / 10;
    }

    res.writeln;
}