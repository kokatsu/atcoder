import std;

void main() {
    int R, X;
    readf("%d %d\n", R, X);

    string res = "No";
    if (X == 1) {
        if (R == clamp(R, 1_600, 2_999)) {
            res = "Yes";
        }
    }
    else {
        if (R == clamp(R, 1_200, 2_399)) {
            res = "Yes";
        }
    }

    res.writeln;
}
