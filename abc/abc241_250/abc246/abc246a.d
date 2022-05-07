import std;

void main() {
    int[int] xlist, ylist;
    foreach (_; 0 .. 3) {
        int x, y;
        readf("%d %d\n", x, y);

        ++xlist[x], ++ylist[y];
    }

    long x;
    foreach (key, val; xlist) {
        if (val == 1) x = key;
    }

    long y;
    foreach (key, val; ylist) {
        if (val == 1) y = key;
    }

    writeln(x, " ", y);
}