import std;

void main() {
    int N;
    readfln("%d", N);

    int[] D = new int[](6);
    foreach (_; 0 .. N) {
        real x, y;
        readfln("%f %f", x, y);

        if (x >= 35.0) {
            ++D[0];
        }
        if (x >= 30.0 && x < 35.0) {
            ++D[1];
        }
        if (x >= 25.0 && x < 30.0) {
            ++D[2];
        }
        if (y >= 25.0) {
            ++D[3];
        }
        if (x >= 0.0 && y < 0.0) {
            ++D[4];
        }
        if (x < 0.0) {
            ++D[5];
        }
    }

    string res = format("%(%d %)", D);
    res.writeln;
}
