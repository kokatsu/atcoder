import std;

void main() {
    long Sx, Sy, Tx, Ty;
    readf("%d %d\n%d %d\n", Sx, Sy, Tx, Ty);

    long dy = abs(Sy - Ty);
    if (Sx % 2 == Sy % 2)
        ++Sx;
    if (Tx % 2 == Ty % 2)
        ++Tx;
    long tx = max(0, abs(Sx - Tx) - dy);

    long res = tx / 2 + dy;
    res.writeln;
}
