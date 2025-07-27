import std;

void main() {
    int Q;
    readf("%d\n", Q);

    int[] A;
    foreach (_; 0 .. Q) {
        int x, y;
        readf("%d %d\n", x, y);

        if (x == 1) {
            A ~= y;
        }
        else {
            A[$ - y].writeln;
        }
    }
}
