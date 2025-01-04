import std;

void main() {
    int X;
    readf("%d\n", X);

    int res;
    foreach (i; 1 .. 10) {
        foreach (j; 1 .. 10) {
            int M = i * j;
            if (i * j != X) {
                res += M;
            }
        }
    }

    res.writeln;
}
