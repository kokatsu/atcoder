import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    bool isHard;
    while (A > 0 || B > 0) {
        long c = A % 10, d = B % 10;
        if (c + d >= 10) {
            isHard = true;
            break;
        }

        A /= 10, B /= 10;
    }

    if (isHard) {
        writeln("Hard");
    }
    else {
        writeln("Easy");
    }
}
