import std;
import core.bitop;

void main() {
    long X, Y;
    readf("%d %d\n", X, Y);

    long res = bsr(Y/X) + 1;
    res.writeln;
}