import std;

void main() {
    int N;
    readf("%d\n", N);

    int RN = int.max, RX;
    int CN = int.max, CX;
    foreach (_; 0 .. N) {
        int R, C;
        readf("%d %d\n", R, C);

        RN = min(RN, R), RX = max(RX, R);
        CN = min(CN, C), CX = max(CX, C);
    }

    int res = (max(RX - RN, CX - CN) + 1) / 2;
    res.writeln;
}
