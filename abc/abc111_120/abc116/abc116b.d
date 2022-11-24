import std;

void main() {
    int s;
    readf("%d\n", s);

    bool[int] f;
    int res = 1;
    while (s !in f) {
        f[s] = true;
        s = (s % 2 == 0 ? s / 2 : 3 * s + 1);
        ++res;
    }

    res.writeln;
}